(function(){
  const clone = (x) => JSON.parse(JSON.stringify(x));
  const splitComma = (s) => {
    const out=[]; let cur='', depth=0, q=null;
    for(let i=0;i<s.length;i++){
      const ch=s[i];
      if(q){cur+=ch; if(ch===q) q=null; continue;}
      if(ch==="'"||ch==='"'){q=ch; cur+=ch; continue;}
      if(ch==='('){depth++; cur+=ch; continue;}
      if(ch===')'){depth--; cur+=ch; continue;}
      if(ch===',' && depth===0){out.push(cur.trim()); cur=''; continue;}
      cur+=ch;
    }
    if(cur.trim()) out.push(cur.trim());
    return out;
  };
  const clean = (q) => q.replace(/--.*$/gm,'').replace(/\/\*[\s\S]*?\*\//g,'').trim().replace(/;\s*$/,'');
  const splitStatements = (sql) => {
    const out=[]; let cur='', q=null;
    for(let i=0;i<sql.length;i++){
      const ch=sql[i];
      if(q){cur+=ch; if(ch===q && sql[i-1] !== '\\') q=null; continue;}
      if(ch==="'"||ch==='"'){q=ch; cur+=ch; continue;}
      if(ch===';'){ if(cur.trim()) out.push(cur.trim()); cur=''; continue; }
      cur+=ch;
    }
    if(cur.trim()) out.push(cur.trim());
    return out;
  };
  const stripQuote = (v) => {
    if(v == null) return null;
    v=String(v).trim();
    if(/^null$/i.test(v)) return null;
    if(/^'.*'$/.test(v) || /^".*"$/.test(v)) return v.slice(1,-1).replace(/\\'/g,"'");
    if(/^-?\d+(\.\d+)?$/.test(v)) return Number(v);
    return v;
  };
  const normKey = (x) => String(x||'').trim().replace(/^`|`$/g,'').replace(/^"|"$/g,'');
  function MiniSQLEngine(initialDb){
    this.initialDb = clone(initialDb);
    this.db = clone(initialDb);
  }
  MiniSQLEngine.prototype.reset = function(){ this.db = clone(this.initialDb); return {type:'message', message:'Database toko_pintar berhasil direset ke dataset awal.'}; };
  MiniSQLEngine.prototype.tables = function(){ return Object.keys(this.db); };
  MiniSQLEngine.prototype.describe = function(table){
    table=normKey(table);
    if(!this.db[table]) throw new Error(`Tabel ${table} tidak ditemukan.`);
    const row = this.db[table][0] || {};
    return {columns:['Field','Type','Null','Key','Default'], rows:Object.keys(row).map(k=>({Field:k,Type:inferType(row[k]),Null:k.includes('_id')?'NO':'YES',Key:k===table.replace(/s$/,'')+'_id'||k.endsWith('_id')?'KEY':'',Default:null}))};
  };
  MiniSQLEngine.prototype.execute = function(sql){
    const statements = splitStatements(sql);
    if(!statements.length) throw new Error('Query kosong.');
    let last;
    for(const st of statements){ last = this.execOne(st); }
    return last;
  };
  MiniSQLEngine.prototype.execOne = function(q){
    q = clean(q);
    if(/^show\s+tables$/i.test(q)) return {columns:['Tables_in_toko_pintar'], rows:this.tables().map(t=>({'Tables_in_toko_pintar':t}))};
    let m = q.match(/^desc(?:ribe)?\s+([\w`"]+)$/i); if(m) return this.describe(m[1]);
    if(/^explain\s+/i.test(q)) return fakeExplain(q.replace(/^explain\s+/i,''), this.tables());
    if(/^insert\s+/i.test(q)) return this.insert(q);
    if(/^update\s+/i.test(q)) return this.update(q);
    if(/^delete\s+/i.test(q)) return this.delete(q);
    if(/^create\s+table\s+/i.test(q)) return this.createTable(q);
    if(/^select\s+/i.test(q) || /^with\s+/i.test(q)) return this.select(q);
    throw new Error('Perintah belum didukung oleh browser SQL engine ini. Coba SELECT, INSERT, UPDATE, DELETE, DESCRIBE, SHOW TABLES, atau EXPLAIN.');
  };
  MiniSQLEngine.prototype.createTable = function(q){
    const m=q.match(/^create\s+table\s+(\w+)\s*\(([^]+)\)$/i);
    if(!m) throw new Error('Format CREATE TABLE belum valid.');
    const table=m[1]; if(this.db[table]) throw new Error(`Tabel ${table} sudah ada.`);
    this.db[table]=[];
    return {type:'message', message:`Tabel ${table} berhasil dibuat. Kolom akan terbaca setelah ada data INSERT.`};
  };
  MiniSQLEngine.prototype.insert = function(q){
    const m=q.match(/^insert\s+into\s+(\w+)\s*\(([^)]+)\)\s*values\s*\(([^]+)\)$/i);
    if(!m) throw new Error('Format INSERT harus: INSERT INTO tabel (kolom) VALUES (nilai).');
    const table=m[1]; const cols=splitComma(m[2]).map(normKey); const vals=splitComma(m[3]).map(stripQuote);
    if(!this.db[table]) throw new Error(`Tabel ${table} tidak ditemukan.`);
    if(cols.length!==vals.length) throw new Error('Jumlah kolom dan nilai tidak sama.');
    const row={}; cols.forEach((c,i)=>row[c]=vals[i]); this.db[table].push(row);
    return {type:'message', message:`1 baris berhasil ditambahkan ke tabel ${table}.`, affectedRows:1};
  };
  MiniSQLEngine.prototype.update = function(q){
    const m=q.match(/^update\s+(\w+)\s+set\s+([^]+?)(?:\s+where\s+([^]+))?$/i);
    if(!m) throw new Error('Format UPDATE harus: UPDATE tabel SET kolom = nilai WHERE kondisi.');
    const table=m[1]; if(!this.db[table]) throw new Error(`Tabel ${table} tidak ditemukan.`);
    const assigns=splitComma(m[2]).map(x=>x.trim()); const where=m[3];
    let count=0;
    this.db[table].forEach(row=>{
      const r = qualifyRow(row, table);
      if(!where || evalWhere(where, r)){
        assigns.forEach(a=>{
          const mm=a.match(/^(\w+)\s*=\s*(.+)$/); if(!mm) throw new Error(`SET tidak valid: ${a}`);
          row[mm[1]]=evalExpr(mm[2], r);
        }); count++;
      }
    });
    return {type:'message', message:`${count} baris berhasil diubah pada tabel ${table}.`, affectedRows:count};
  };
  MiniSQLEngine.prototype.delete = function(q){
    const m=q.match(/^delete\s+from\s+(\w+)(?:\s+where\s+([^]+))?$/i);
    if(!m) throw new Error('Format DELETE harus: DELETE FROM tabel WHERE kondisi.');
    const table=m[1]; if(!this.db[table]) throw new Error(`Tabel ${table} tidak ditemukan.`);
    const before=this.db[table].length;
    this.db[table]=this.db[table].filter(row=> m[2] ? !evalWhere(m[2], qualifyRow(row, table)) : false);
    const count=before-this.db[table].length;
    return {type:'message', message:`${count} baris berhasil dihapus dari tabel ${table}.`, affectedRows:count};
  };
  MiniSQLEngine.prototype.select = function(q){
    const setResult = trySetOperation(q, this.db);
    if(setResult) return setResult;
    if(/^with\s+/i.test(q)) return this.selectWith(q);
    return selectCore(q, this.db);
  };
  MiniSQLEngine.prototype.selectWith = function(q){
    // Minimal CTE support: WITH name AS (SELECT ...) SELECT ... FROM name ...
    const m=q.match(/^with\s+(\w+)\s+as\s*\(([^]+)\)\s*(select[^]+)$/i);
    if(!m) throw new Error('CTE browser engine mendukung pola: WITH nama AS (SELECT ...) SELECT ... FROM nama.');
    const cteName=m[1];
    const cteResult=selectCore(m[2], this.db);
    const temp=clone(this.db); temp[cteName]=cteResult.rows;
    return selectCore(m[3], temp);
  };


  function trySetOperation(q, db){
    const m=q.match(/^([\s\S]+?)\s+(union\s+all|union|except|intersect)\s+([\s\S]+)$/i);
    if(!m) return null;
    const op=m[2].toLowerCase().replace(/\s+/g,' ');
    const left=selectCore(m[1], db);
    const right=selectCore(m[3], db);
    const cols=left.columns && left.columns.length ? left.columns : Object.keys(left.rows?.[0]||{});
    const rcols=right.columns && right.columns.length ? right.columns : Object.keys(right.rows?.[0]||{});
    const normalize=(row, sourceCols)=>{
      const obj={}; cols.forEach((c,i)=>obj[c]=row[sourceCols[i]]); return obj;
    };
    const lrows=(left.rows||[]).map(r=>normalize(r,cols));
    const rrows=(right.rows||[]).map(r=>normalize(r,rcols));
    const key=(r)=>JSON.stringify(cols.map(c=>r[c]));
    let rows=[];
    if(op==='union all') rows=[...lrows,...rrows];
    if(op==='union'){
      const seen=new Set(); [...lrows,...rrows].forEach(r=>{ const k=key(r); if(!seen.has(k)){ seen.add(k); rows.push(r); }});
    }
    if(op==='except'){
      const rightKeys=new Set(rrows.map(key)); rows=lrows.filter(r=>!rightKeys.has(key(r)));
    }
    if(op==='intersect'){
      const rightKeys=new Set(rrows.map(key)); rows=lrows.filter(r=>rightKeys.has(key(r)));
    }
    return {columns:cols, rows};
  }

  function sqlLiteral(v){
    if(v===null || v===undefined) return 'NULL';
    if(typeof v==='number') return String(v);
    return "'" + String(v).replace(/'/g,"\\'") + "'";
  }
  function replaceSubqueries(cond, db){
    let out='';
    for(let i=0;i<cond.length;i++){
      if(cond[i]==='(' && /^\s*select\b/i.test(cond.slice(i+1))){
        let depth=1, j=i+1;
        while(j<cond.length && depth>0){
          const ch=cond[j];
          if(ch==='(') depth++;
          else if(ch===')') depth--;
          j++;
        }
        const inner=cond.slice(i+1,j-1).trim();
        const res=selectCore(inner, db);
        const cols=res.columns && res.columns.length ? res.columns : Object.keys(res.rows?.[0]||{});
        const vals=(res.rows||[]).map(r=>r[cols[0]]);
        const before=out.slice(-8).toLowerCase();
        if(/\bin\s*$/.test(before)) out += '(' + vals.map(sqlLiteral).join(', ') + ')';
        else out += sqlLiteral(vals[0]);
        i=j-1;
      } else out += cond[i];
    }
    return out;
  }

  function inferType(v){ if(v===null) return 'NULL'; if(typeof v==='number') return Number.isInteger(v)?'INT':'DECIMAL'; if(/^\d{4}-\d{2}-\d{2}$/.test(String(v))) return 'DATE'; return 'VARCHAR'; }
  function fakeExplain(q, tables){
    const from=(q.match(/\bfrom\s+(\w+)/i)||[])[1]||'-'; const joinCount=(q.match(/\bjoin\b/gi)||[]).length;
    return {columns:['id','select_type','table','type','possible_keys','rows','Extra'], rows:[{id:1,select_type:'SIMPLE',table:from,type:/where/i.test(q)?'range':'ALL',possible_keys:/where|join/i.test(q)?'idx_rekomendasi':'NULL',rows: tables.includes(from)?'~'+Math.max(1,8+joinCount*4):'?',Extra:/order\s+by/i.test(q)?'Using where; Using filesort':'Using where'}]};
  }
  function qualifyRow(row, alias){
    const out={}; Object.entries(row).forEach(([k,v])=>{out[k]=v; out[`${alias}.${k}`]=v;}); return out;
  }
  function tableRows(db, table, alias){
    table=normKey(table); alias=alias||table;
    if(!db[table]) throw new Error(`Tabel ${table} tidak ditemukan.`);
    return db[table].map(row=>qualifyRow(row, alias));
  }
  function findClause(query, clause){
    const re = new RegExp(`\\b${clause}\\b`, 'i'); const m=query.match(re); return m ? m.index : -1;
  }
  function selectCore(q, db){
    q=clean(q);
    const fromIdx=findClause(q,'from'); if(fromIdx<0) throw new Error('SELECT membutuhkan klausa FROM.');
    const selectPart=q.slice(6,fromIdx).trim();
    let rest=q.slice(fromIdx+4).trim();
    const positions=['where','group by','having','order by','limit'].map(c=>({c,i:findClause(rest,c)})).filter(x=>x.i>=0).sort((a,b)=>a.i-b.i);
    const fromPart=positions.length?rest.slice(0,positions[0].i).trim():rest;
    const clauses={};
    for(let i=0;i<positions.length;i++){
      const cur=positions[i], next=positions[i+1];
      clauses[cur.c]=rest.slice(cur.i+cur.c.length, next?next.i:undefined).trim();
    }
    let rows = buildFrom(fromPart, db);
    if(clauses.where){ clauses.where = replaceSubqueries(clauses.where, db); rows = rows.filter(r=>evalWhere(clauses.where, r)); }
    let finalRows;
    const selectItems=splitComma(selectPart);
    if(clauses['group by'] || selectItems.some(isAggregate)){
      const groupCols=clauses['group by']?splitComma(clauses['group by']).map(x=>x.trim()):['__all__'];
      const map=new Map();
      rows.forEach(r=>{
        const key=groupCols.map(c=>c==='__all__'?'__all__':getVal(r,c)).join('||');
        if(!map.has(key)) map.set(key,[]); map.get(key).push(r);
      });
      finalRows=[];
      for(const group of map.values()){
        const obj={};
        selectItems.forEach(item=>Object.assign(obj, evalSelectItem(item, group[0], group)));
        if(!clauses.having || evalHaving(clauses.having, obj, group)) finalRows.push(obj);
      }
    } else {
      finalRows=rows.map(r=>{
        const obj={}; selectItems.forEach(item=>Object.assign(obj, evalSelectItem(item, r, [r]))); return obj;
      });
    }
    if(clauses['order by']){
      const orders=splitComma(clauses['order by']).map(x=>{
        const m=x.trim().match(/^(.+?)(?:\s+(asc|desc))?$/i); return {col:normAlias(m[1]), dir:(m[2]||'asc').toLowerCase()};
      });
      finalRows.sort((a,b)=>{
        for(const o of orders){ const av=a[o.col], bv=b[o.col]; if(av==bv) continue; return (av>bv?1:-1)*(o.dir==='desc'?-1:1); }
        return 0;
      });
    }
    if(clauses.limit){ const n=parseInt(clauses.limit,10); if(!Number.isNaN(n)) finalRows=finalRows.slice(0,n); }
    const columns=[...new Set(finalRows.flatMap(r=>Object.keys(r)))];
    return {columns, rows:finalRows};
  }
  function buildFrom(fromPart, db){
    const joinIdx=fromPart.search(/\b(left\s+join|inner\s+join|join)\b/i);
    const baseStr=(joinIdx>=0?fromPart.slice(0,joinIdx):fromPart).trim();
    const bm=baseStr.match(/^(\w+)(?:\s+(?:as\s+)?(\w+))?$/i); if(!bm) throw new Error(`FROM tidak valid: ${baseStr}`);
    let rows=tableRows(db,bm[1],bm[2]||bm[1]);
    if(joinIdx<0) return rows;
    const joinPart=fromPart.slice(joinIdx);
    const re=/\b(left\s+join|inner\s+join|join)\s+(\w+)(?:\s+(?:as\s+)?(\w+))?\s+on\s+([^]+?)(?=\s+(?:left\s+join|inner\s+join|join)\s+\w+|$)/gi;
    let jm;
    while((jm=re.exec(joinPart))){
      const type=jm[1].toLowerCase(); const table=jm[2]; const alias=jm[3]||table; const on=jm[4].trim();
      const right=tableRows(db,table,alias); const joined=[];
      for(const l of rows){
        let matched=false;
        for(const r of right){ const combo={...l,...r}; if(evalJoinOn(on, combo)){ joined.push(combo); matched=true; } }
        if(!matched && type.startsWith('left')){
          const nullObj={...l};
          if(db[table] && db[table][0]) Object.keys(db[table][0]).forEach(k=>{ nullObj[`${alias}.${k}`]=null; if(!(k in nullObj)) nullObj[k]=null; });
          joined.push(nullObj);
        }
      }
      rows=joined;
    }
    return rows;
  }
  function evalJoinOn(on,row){
    const parts=on.split(/\s+and\s+/i);
    return parts.every(p=>{ const m=p.match(/^(.+?)\s*=\s*(.+)$/); if(!m) return false; return getVal(row,m[1])==getVal(row,m[2]); });
  }
  function isAggregate(item){ return /\b(count|sum|avg|min|max)\s*\(/i.test(item); }
  function normAlias(s){ return normKey(s).replace(/^.*\./,''); }
  function aliasOf(item, fallback){ const m=item.match(/\s+as\s+([\w_]+)$/i); return m?m[1]:fallback; }
  function removeAlias(item){ return item.replace(/\s+as\s+[\w_]+$/i,'').trim(); }
  function evalSelectItem(item,row,group){
    item=item.trim();
    if(item==='*'){
      const obj={}; Object.keys(row).filter(k=>!k.includes('.')).forEach(k=>obj[k]=row[k]); return obj;
    }
    let m=item.match(/^(\w+)\.\*$/); if(m){ const prefix=m[1]+'.'; const obj={}; Object.keys(row).filter(k=>k.startsWith(prefix)).forEach(k=>obj[k.slice(prefix.length)]=row[k]); return obj; }
    const expr=removeAlias(item);
    const alias=aliasOf(item, defaultAlias(expr));
    m=expr.match(/^(count|sum|avg|min|max)\s*\(([^)]*)\)$/i);
    if(m){ return {[alias]:aggregate(m[1].toLowerCase(),m[2].trim(),group)}; }
    return {[alias]:evalExpr(expr,row)};
  }
  function defaultAlias(expr){
    expr=expr.trim();
    if(isAggregate(expr)) return expr.toLowerCase().replace(/[^a-z0-9]+/g,'_').replace(/^_|_$/g,'');
    return normAlias(expr);
  }
  function aggregate(fn,expr,group){
    if(fn==='count'){ if(expr==='*') return group.length; return group.filter(r=>getVal(r,expr)!=null).length; }
    const vals=group.map(r=>evalExpr(expr,r)).filter(v=>v!=null && !Number.isNaN(Number(v))).map(Number);
    if(!vals.length) return null;
    if(fn==='sum') return vals.reduce((a,b)=>a+b,0);
    if(fn==='avg') return vals.reduce((a,b)=>a+b,0)/vals.length;
    if(fn==='min') return Math.min(...vals);
    if(fn==='max') return Math.max(...vals);
  }
  function getVal(row, token){
    token=String(token).trim();
    if(/^'.*'$/.test(token)||/^".*"$/.test(token)||/^-?\d+(\.\d+)?$/.test(token)||/^null$/i.test(token)) return stripQuote(token);
    token=normKey(token);
    if(token in row) return row[token];
    const short=token.replace(/^.*\./,'');
    if(short in row) return row[short];
    return undefined;
  }
  function evalExpr(expr,row){
    expr=String(expr).trim();
    // CASE WHEN condition THEN value ELSE value END
    let cm=expr.match(/^case\s+when\s+(.+?)\s+then\s+(.+?)\s+else\s+(.+?)\s+end$/i);
    if(cm) return evalWhere(cm[1],row) ? evalExpr(cm[2],row) : evalExpr(cm[3],row);
    // COALESCE(a,b,c)
    cm=expr.match(/^coalesce\s*\(([^]+)\)$/i);
    if(cm){ for(const part of splitComma(cm[1])){ const v=evalExpr(part,row); if(v!==null && v!==undefined) return v; } return null; }
    if(/[+\-*\/]/.test(expr) && !/^'.*'$/.test(expr)){
      const safe=expr.replace(/[\w.]+|'[^']*'|"[^"]*"|-?\d+(?:\.\d+)?/g, t=>{
        if(/^[+\-*\/]$/.test(t)) return t;
        const v=getVal(row,t); return (v==null || v===undefined || v==='') ? 0 : Number(v);
      });
      try { return Function(`return (${safe})`)(); } catch(e){ return getVal(row,expr); }
    }
    return getVal(row,expr);
  }
  function evalWhere(cond,row){
    cond=cond.trim().replace(/^\((.*)\)$/,'$1');
    // OR support
    if(/\s+or\s+/i.test(cond)) return cond.split(/\s+or\s+/i).some(c=>evalWhere(c,row));
    if(/\s+and\s+/i.test(cond)) return cond.split(/\s+and\s+/i).every(c=>evalWhere(c,row));
    let m=cond.match(/^(.+?)\s+is\s+(not\s+)?null$/i); if(m){ const v=getVal(row,m[1]); return m[2]? v!=null : v==null; }
    m=cond.match(/^(.+?)\s+between\s+(.+?)\s+and\s+(.+)$/i); if(m){ const v=getVal(row,m[1]); const a=stripQuote(m[2]); const b=stripQuote(m[3]); return v>=a && v<=b; }
    m=cond.match(/^(.+?)\s+in\s*\(([^)]+)\)$/i); if(m){ const v=getVal(row,m[1]); return splitComma(m[2]).map(stripQuote).some(x=>x==v); }
    m=cond.match(/^(.+?)\s+like\s+(.+)$/i); if(m){ const v=String(getVal(row,m[1])??''); const pat=String(stripQuote(m[2])).replace(/[.*+?^${}()|[\]\\]/g,'\\$&').replace(/%/g,'.*').replace(/_/g,'.'); return new RegExp('^'+pat+'$','i').test(v); }
    m=cond.match(/^(.+?)\s*(=|<>|!=|>=|<=|>|<)\s*(.+)$/); if(m){ const a=evalExpr(m[1],row); const b=evalExpr(m[3],row); switch(m[2]){case '=': return a==b; case '<>': case '!=': return a!=b; case '>': return a>b; case '<': return a<b; case '>=': return a>=b; case '<=': return a<=b;} }
    return Boolean(getVal(row,cond));
  }
  function evalHaving(cond,obj,group){
    // Replace aggregate expressions with their default alias value.
    let c=cond;
    const aggs=cond.match(/(count|sum|avg|min|max)\s*\([^)]*\)/ig)||[];
    aggs.forEach(a=>{ c=c.replace(a, String(obj[defaultAlias(a)] ?? aggregate(a.match(/^(\w+)/)[1].toLowerCase(), a.match(/\(([^)]*)\)/)[1], group))); });
    return evalWhere(c,obj);
  }
  window.MiniSQLEngine = MiniSQLEngine;
})();
