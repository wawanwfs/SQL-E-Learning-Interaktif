
(function(){
  const data = window.SQL_APP_DATA || {lessons:[],glossary:[],database:{},v4Improvements:[]};
  const PREFIX='sql-master-v40:';
  const LEGACY='sql-master-v30:';
  const $=(id)=>document.getElementById(id);
  const q=(s,r=document)=>r.querySelector(s);
  const qa=(s,r=document)=>Array.from(r.querySelectorAll(s));
  const esc=(x)=>String(x??'').replace(/[&<>"']/g,m=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[m]));
  const get=(k,fb=null)=>{try{let raw=localStorage.getItem(PREFIX+k); if(raw===null) raw=localStorage.getItem(LEGACY+k); return raw===null?fb:JSON.parse(raw);}catch(e){return fb;}};
  const set=(k,v)=>{try{localStorage.setItem(PREFIX+k,JSON.stringify(v));}catch(e){toast('Storage penuh atau tidak dapat ditulis.');}};
  const del=(k)=>{try{localStorage.removeItem(PREFIX+k);}catch(e){}};
  const lessons=data.lessons||[];
  let activeTab='overview';
  let examState=null;
  let commandItems=[];
  let timer=null, seconds=0;

  function init(){
    injectToolbar(); injectModal(); injectCommand(); injectRuler(); injectStatusbar(); bindShortcuts(); bindOnlineStatus(); applyPrefs(); buildCommandItems(); updateStatusbar(); setInterval(updateStatusbar,10000);
    migrateV3Marker();
  }
  function injectToolbar(){
    if(q('.v4-toolbar')) return;
    const bar=document.createElement('div'); bar.className='v4-toolbar';
    bar.innerHTML=`<span class="v4-title"><span class="v4-badge-dot"></span>v4 FULL Learning Tools</span>
      <button class="v4-chip primary" data-v4-open="overview">Ringkasan</button>
      <button class="v4-chip" data-v4-open="planner">Planner</button>
      <button class="v4-chip" data-v4-open="exam">Ujian</button>
      <button class="v4-chip" data-v4-open="flashcards">Flashcards</button>
      <button class="v4-chip" data-v4-open="dataset">Data Lab</button>
      <button class="v4-chip" data-v4-open="export">Export</button>
      <button class="v4-chip" id="v4CommandBtn">⌘ Cari</button>`;
    document.body.insertBefore(bar, document.body.firstChild);
    bar.addEventListener('click',e=>{const t=e.target.closest('[data-v4-open]'); if(t) openModal(t.dataset.v4Open);});
    q('#v4CommandBtn').onclick=()=>openCommand();
  }
  function injectModal(){
    if($('v4Modal')) return;
    const modal=document.createElement('div'); modal.className='v4-modal'; modal.id='v4Modal';
    modal.innerHTML=`<div class="v4-modal-panel"><div class="v4-modal-head"><h2 id="v4ModalTitle">v4 Tools</h2><button class="v4-close" id="v4Close">×</button></div><div class="v4-tabs" id="v4Tabs"></div><div id="v4Content"></div></div>`;
    document.body.appendChild(modal); $('v4Close').onclick=()=>modal.classList.remove('show'); modal.addEventListener('click',e=>{if(e.target===modal) modal.classList.remove('show');});
  }
  function openModal(tab='overview'){
    activeTab=tab; $('v4Modal').classList.add('show'); renderTabs(); renderContent();
  }
  function renderTabs(){
    const tabs=[['overview','Ringkasan'],['improvements','100 Pengembangan'],['planner','Planner'],['exam','Ujian'],['flashcards','Flashcards'],['schema','Schema'],['dataset','Data Lab'],['access','Aksesibilitas'],['export','Export'],['help','Bantuan']];
    $('v4Tabs').innerHTML=tabs.map(([id,label])=>`<button class="v4-tab ${activeTab===id?'active':''}" data-tab="${id}">${label}</button>`).join('');
    qa('.v4-tab',$('v4Tabs')).forEach(b=>b.onclick=()=>{activeTab=b.dataset.tab; renderTabs(); renderContent();});
  }
  function renderContent(){
    const map={overview,improvements,planner,exam,flashcards,schema,dataset,access,export:exportPanel,help};
    const fn=map[activeTab]||overview; fn();
  }
  function stats(){
    const totalLessons=lessons.length, totalExercises=lessons.reduce((a,l)=>a+(l.exercises||[]).length,0), totalQuiz=lessons.reduce((a,l)=>a+(l.quiz||[]).length,0);
    const done=JSON.parse(localStorage.getItem('sql-master-v30:done')||'[]');
    const ex=JSON.parse(localStorage.getItem('sql-master-v30:doneExercises')||'[]');
    const quiz=JSON.parse(localStorage.getItem('sql-master-v30:quizAnswers')||'{}');
    return {totalLessons,totalExercises,totalQuiz,done:done.length,ex:ex.length,quiz:Object.keys(quiz).length,percent:Math.round(((done.length/Math.max(1,totalLessons))+(ex.length/Math.max(1,totalExercises))+(Object.keys(quiz).length/Math.max(1,totalQuiz)))/3*100)};
  }
  function currentLesson(){const active=q('#lessonNav button.active'); const id=active?.dataset?.id?Number(active.dataset.id):Number(JSON.parse(localStorage.getItem('sql-master-v30:currentLessonId')||'1')); return lessons.find(l=>l.id===id)||lessons[0];}
  function overview(){
    const s=stats(); $('v4ModalTitle').textContent='Ringkasan v4 FULL';
    $('v4Content').innerHTML=`<div class="v4-kpi"><div><strong>${s.totalLessons}</strong><span>Modul</span></div><div><strong>${s.totalExercises}</strong><span>Latihan</span></div><div><strong>${s.totalQuiz}</strong><span>Quiz</span></div><div><strong>${s.percent}%</strong><span>Progress</span></div></div>
    <div class="v4-panel-grid" style="margin-top:14px"><div class="v4-card"><h3>Fitur v4</h3><p>Paket ini menambahkan 100 pengembangan: materi tambahan, ujian acak, flashcards, planner, schema explorer, dataset pendukung, export transkrip, dan kontrol aksesibilitas.</p><button class="v4-action center" data-go="improvements">Lihat 100 Pengembangan</button></div><div class="v4-card"><h3>Modul Aktif</h3><p><strong>${esc(currentLesson().title)}</strong></p><p>${esc(currentLesson().subtitle)}</p><button class="v4-action center" id="v4CopyQueries">Salin query modul aktif</button></div><div class="v4-card"><h3>Target Belajar</h3><label>Target mingguan</label><input class="v4-input" id="v4Goal" value="${esc(get('goal','Selesaikan 10 modul per minggu'))}"><button class="v4-action center" id="v4SaveGoal">Simpan Target</button></div></div>`;
    q('[data-go="improvements"]').onclick=()=>{activeTab='improvements'; renderTabs(); renderContent();};
    $('v4SaveGoal').onclick=()=>{set('goal',$('v4Goal').value); toast('Target belajar disimpan.');};
    $('v4CopyQueries').onclick=copyCurrentLessonQueries;
  }
  function improvements(){
    $('v4ModalTitle').textContent='100 Usulan Perbaikan/Pengembangan';
    const groups={}; (data.v4Improvements||[]).forEach(x=>(groups[x.group]=groups[x.group]||[]).push(x));
    $('v4Content').innerHTML=Object.entries(groups).map(([g,items])=>`<div class="v4-card"><h3>${esc(g)}</h3><table class="v4-table"><tbody>${items.map(x=>`<tr><td style="width:56px">${x.no}</td><td><strong>${esc(x.title)}</strong><br><small>${esc(x.status)} — ${esc(x.implementation)}</small></td></tr>`).join('')}</tbody></table></div>`).join('');
  }
  function planner(){
    $('v4ModalTitle').textContent='Planner Belajar';
    const weeks=Number(get('plannerWeeks',8));
    $('v4Content').innerHTML=`<div class="v4-panel-grid"><div class="v4-card"><h3>Atur Durasi</h3><label>Jumlah minggu</label><select class="v4-select" id="v4Weeks">${[2,4,6,8,12,16].map(w=>`<option ${w===weeks?'selected':''}>${w}</option>`).join('')}</select><button class="v4-action center" id="v4BuildPlan">Buat Planner</button></div><div class="v4-card"><h3>Timer Fokus</h3><p id="v4TimerDisplay">00:00</p><button class="v4-action center" id="v4StartTimer">Mulai / Pause</button><button class="v4-action center" id="v4ResetTimer">Reset</button></div></div><div id="v4PlanOut" style="margin-top:14px"></div>`;
    $('v4BuildPlan').onclick=()=>{set('plannerWeeks',Number($('v4Weeks').value)); renderPlan(Number($('v4Weeks').value));};
    $('v4StartTimer').onclick=toggleTimer; $('v4ResetTimer').onclick=()=>{seconds=0; updateTimer();}; renderPlan(weeks); updateTimer();
  }
  function renderPlan(weeks){
    const per=Math.ceil(lessons.length/weeks); let html='<div class="v4-card"><h3>Rencana '+weeks+' Minggu</h3><table class="v4-table"><thead><tr><th>Minggu</th><th>Modul</th><th>Fokus</th></tr></thead><tbody>';
    for(let w=1;w<=weeks;w++){const start=(w-1)*per+1, end=Math.min(w*per,lessons.length); if(start<=lessons.length) html+=`<tr><td>${w}</td><td>${start}–${end}</td><td>Baca materi, kerjakan latihan, quiz, dan simpan catatan portofolio.</td></tr>`;}
    html+='</tbody></table></div>'; $('v4PlanOut').innerHTML=html;
  }
  function toggleTimer(){ if(timer){clearInterval(timer); timer=null; return;} timer=setInterval(()=>{seconds++; updateTimer();},1000); }
  function updateTimer(){const m=String(Math.floor(seconds/60)).padStart(2,'0'), s=String(seconds%60).padStart(2,'0'); const el=$('v4TimerDisplay'); if(el) el.textContent=`${m}:${s}`;}
  function exam(){
    $('v4ModalTitle').textContent='Ujian Acak Lokal';
    if(!examState){$('v4Content').innerHTML=`<div class="v4-card"><h3>Simulasi Ujian</h3><p>Soal diambil acak dari seluruh quiz. Hasil disimpan lokal sebagai latihan mandiri.</p><label>Jumlah soal</label><select class="v4-select" id="v4ExamCount"><option>20</option><option selected>40</option><option>60</option></select><button class="v4-action center" id="v4StartExam">Mulai Ujian</button><div id="v4LastExam"></div></div>`; $('v4StartExam').onclick=startExam; renderLastExam(); return;}
    const i=examState.index, item=examState.items[i];
    $('v4Content').innerHTML=`<div class="v4-card"><h3>Soal ${i+1}/${examState.items.length}</h3><p>${esc(item.question)}</p><div class="v4-list">${item.options.map((o,idx)=>`<button data-answer="${idx}">${esc(o)}</button>`).join('')}</div><p class="muted">Topik: ${esc(item.topic||'SQL')}</p></div>`;
    qa('[data-answer]',$('v4Content')).forEach(b=>b.onclick=()=>answerExam(Number(b.dataset.answer)));
  }
  function quizPool(){return lessons.flatMap(l=>(l.quiz||[]).map((z,i)=>({...z,topic:l.title,lessonId:l.id,qid:`${l.id}-${i}`})));}
  function startExam(){const n=Number($('v4ExamCount').value); const pool=shuffle(quizPool()).slice(0,n); examState={items:pool,index:0,score:0,answers:[]}; renderContent();}
  function answerExam(ans){const item=examState.items[examState.index]; const ok=ans===item.answer; if(ok) examState.score++; examState.answers.push({qid:item.qid, answer:ans, correct:ok}); examState.index++; if(examState.index>=examState.items.length){const result={date:new Date().toISOString(),score:examState.score,total:examState.items.length,percent:Math.round(examState.score/examState.items.length*100)}; set('lastExam',result); examState=null; toast('Ujian selesai.'); exam();} else renderContent();}
  function renderLastExam(){const r=get('lastExam'); const out=$('v4LastExam'); if(r&&out) out.innerHTML=`<div class="v4-card"><h3>Hasil Terakhir</h3><p>Skor ${r.score}/${r.total} (${r.percent}%). Tanggal: ${new Date(r.date).toLocaleString('id-ID')}</p></div>`;}
  function flashcards(){
    $('v4ModalTitle').textContent='Flashcards';
    const cards=lessons.flatMap(l=>(l.flashcards||[]).map(f=>({...f,lesson:l.title}))).concat((data.glossary||[]).map(g=>({front:g.term,back:g.definition,lesson:'Glosarium'})));
    let idx=Number(get('flashIndex',0))%cards.length; const c=cards[idx];
    $('v4Content').innerHTML=`<div class="v4-card"><h3>${esc(c.front)}</h3><p id="v4FlashBack" style="display:none">${esc(c.back)}</p><p class="muted">${esc(c.lesson)}</p><button class="v4-action center" id="v4ShowBack">Tampilkan Jawaban</button><button class="v4-action center" id="v4NextCard">Kartu Berikutnya</button></div>`;
    $('v4ShowBack').onclick=()=>{$('v4FlashBack').style.display='block';}; $('v4NextCard').onclick=()=>{set('flashIndex',idx+1); flashcards();};
  }
  function schema(){
    $('v4ModalTitle').textContent='Schema Explorer';
    const db=data.database||{};
    $('v4Content').innerHTML=`<div class="v4-panel-grid">${Object.entries(db).map(([name,rows])=>{const cols=rows[0]?Object.keys(rows[0]):[]; return `<div class="v4-card"><h3>${esc(name)}</h3><p>${rows.length} baris contoh</p><table class="v4-table"><tbody>${cols.map(c=>`<tr><td>${esc(c)}</td><td>${typeof rows[0][c]}</td></tr>`).join('')}</tbody></table></div>`}).join('')}</div>`;
  }
  function dataset(){
    $('v4ModalTitle').textContent='Data Lab dan File Pendukung';
    const files=['datasets/large/README.md','datasets/supporting/produk_catalog_2000.csv','datasets/supporting/pelanggan_synthetic_3000.csv','datasets/supporting/daily_sales_2026.csv','datasets/supporting/warehouse_stock_snapshot.csv','data/v4_casebook.json','data/v4_exam_bank.json','data/v4_flashcards.json','sql/query_bank_500_v4.sql'];
    $('v4Content').innerHTML=`<div class="v4-card"><h3>File Pendukung</h3><p>File berikut dapat dipakai untuk praktik di DBMS nyata. Pada GitHub Pages, file dapat dibuka atau diunduh langsung.</p><div class="download-grid">${files.map(f=>`<a href="${f}" target="_blank" rel="noopener">${esc(f)}</a>`).join('')}</div></div>`;
  }
  function access(){
    $('v4ModalTitle').textContent='Aksesibilitas dan Tampilan';
    const prefs=get('prefs',{});
    $('v4Content').innerHTML=`<div class="v4-panel-grid"><div class="v4-card"><h3>Preferensi Baca</h3><label><input type="checkbox" id="v4High" ${prefs.high?'checked':''}> High contrast</label><br><label><input type="checkbox" id="v4Compact" ${prefs.compact?'checked':''}> Compact mode</label><br><label><input type="checkbox" id="v4Readable" ${prefs.readable?'checked':''}> Lebar baca optimal</label><br><label><input type="checkbox" id="v4RulerToggle" ${prefs.ruler?'checked':''}> Reading ruler</label><button class="v4-action center" id="v4SavePrefs">Simpan Preferensi</button></div><div class="v4-card"><h3>Ekspor Modul</h3><button class="v4-action center" id="v4PrintModule">Print Modul Aktif</button><button class="v4-action center" id="v4DownloadMd">Download Markdown Modul</button></div></div>`;
    $('v4SavePrefs').onclick=()=>{set('prefs',{high:$('v4High').checked,compact:$('v4Compact').checked,readable:$('v4Readable').checked,ruler:$('v4RulerToggle').checked}); applyPrefs(); toast('Preferensi disimpan.');};
    $('v4PrintModule').onclick=()=>window.print(); $('v4DownloadMd').onclick=downloadCurrentLessonMarkdown;
  }
  function exportPanel(){
    $('v4ModalTitle').textContent='Export, Backup, dan Audit Lokal';
    const used=storageSize();
    $('v4Content').innerHTML=`<div class="v4-panel-grid"><div class="v4-card"><h3>Export</h3><button class="v4-action center" id="v4ExportAll">Backup JSON</button><button class="v4-action center" id="v4ExportCsv">Progress CSV</button><button class="v4-action center" id="v4Transcript">Transkrip HTML</button></div><div class="v4-card"><h3>Restore</h3><input class="v4-input" type="file" id="v4Import" accept="application/json"></div><div class="v4-card"><h3>Audit Storage</h3><p>Perkiraan penggunaan storage: <strong>${used} KB</strong>.</p><button class="v4-action center" id="v4Snapshot">Buat Snapshot Lokal</button><button class="v4-action center" id="v4ClearV4">Hapus Pengaturan v4</button></div></div>`;
    $('v4ExportAll').onclick=backupAll; $('v4ExportCsv').onclick=exportCsv; $('v4Transcript').onclick=transcriptHtml; $('v4Snapshot').onclick=()=>{set('snapshot:'+Date.now(),collectStorage()); toast('Snapshot tersimpan lokal.');}; $('v4ClearV4').onclick=()=>{if(confirm('Hapus pengaturan v4 saja?')){Object.keys(localStorage).filter(k=>k.startsWith(PREFIX)).forEach(k=>localStorage.removeItem(k)); toast('Pengaturan v4 dihapus.');}}; $('v4Import').onchange=restoreAll;
  }
  function help(){
    $('v4ModalTitle').textContent='Bantuan v4';
    $('v4Content').innerHTML=`<div class="v4-panel-grid"><div class="v4-card"><h3>Shortcut</h3><ul><li>Ctrl+K: command palette.</li><li>Ctrl+Enter: jalankan SQL.</li><li>Esc: tutup panel v4.</li></ul></div><div class="v4-card"><h3>Dokumentasi</h3><div class="download-grid"><a href="docs/USULAN_PENGEMBANGAN_100_v4.md" target="_blank">100 pengembangan</a><a href="docs/PANDUAN_PENGGUNA_v4.md" target="_blank">Panduan pengguna</a><a href="docs/PANDUAN_DOSEN_v4.md" target="_blank">Panduan dosen</a><a href="docs/CHANGELOG_v4_0.md" target="_blank">Changelog</a></div></div></div>`;
  }
  function injectCommand(){ if($('v4Command')) return; const el=document.createElement('div'); el.id='v4Command'; el.className='v4-command'; el.innerHTML='<input id="v4CommandInput" placeholder="Cari modul, fitur, atau topik..."><div class="v4-command-results" id="v4CommandResults"></div>'; document.body.appendChild(el); $('v4CommandInput').oninput=renderCommand; }
  function buildCommandItems(){ commandItems=lessons.map(l=>({label:`Modul ${String(l.id).padStart(3,'0')}: ${l.title}`, type:'module', id:l.id, desc:l.subtitle})).concat([{label:'Buka Planner',type:'tab',id:'planner'},{label:'Buka Ujian',type:'tab',id:'exam'},{label:'Buka Flashcards',type:'tab',id:'flashcards'},{label:'Buka 100 Pengembangan',type:'tab',id:'improvements'},{label:'Buka Schema Explorer',type:'tab',id:'schema'}]); }
  function openCommand(){ $('v4Command').classList.add('show'); $('v4CommandInput').focus(); renderCommand(); }
  function closeCommand(){ $('v4Command').classList.remove('show'); }
  function renderCommand(){const term=($('v4CommandInput').value||'').toLowerCase(); const rows=commandItems.filter(x=>(x.label+' '+(x.desc||'')).toLowerCase().includes(term)).slice(0,20); $('v4CommandResults').innerHTML=rows.map((x,i)=>`<button data-cmd="${i}"><strong>${esc(x.label)}</strong><br><small>${esc(x.desc||x.type)}</small></button>`).join(''); qa('[data-cmd]',$('v4CommandResults')).forEach((b,i)=>b.onclick=()=>runCommand(rows[i]));}
  function runCommand(item){closeCommand(); if(item.type==='tab') openModal(item.id); if(item.type==='module'){q(`#lessonNav button[data-id="${item.id}"]`)?.click();}}
  function bindShortcuts(){document.addEventListener('keydown',e=>{if((e.ctrlKey||e.metaKey)&&e.key.toLowerCase()==='k'){e.preventDefault(); openCommand();} if(e.key==='Escape'){closeCommand(); $('v4Modal')?.classList.remove('show');}});}
  function applyPrefs(){const p=get('prefs',{}); document.body.classList.toggle('v4-high-contrast',!!p.high); document.body.classList.toggle('v4-compact',!!p.compact); document.body.classList.toggle('v4-readable',!!p.readable); $('v4Ruler')?.classList.toggle('show',!!p.ruler);}
  function injectRuler(){const r=document.createElement('div'); r.id='v4Ruler'; r.className='v4-ruler'; document.body.appendChild(r);}
  function injectStatusbar(){const s=document.createElement('div'); s.className='v4-statusbar'; s.id='v4Statusbar'; document.body.appendChild(s);}
  function updateStatusbar(){const s=stats(); const online=navigator.onLine?'online':'offline'; const el=$('v4Statusbar'); if(el) el.textContent=`v4 • ${online} • ${s.percent}% • ${lessons.length} modul`;}
  function bindOnlineStatus(){window.addEventListener('online',updateStatusbar); window.addEventListener('offline',updateStatusbar);}
  function migrateV3Marker(){ if(!get('migratedFromV3',false)){set('migratedFromV3',true);}}
  function storageSize(){let n=0; Object.keys(localStorage).forEach(k=>n+=k.length+(localStorage.getItem(k)||'').length); return Math.round(n/1024);}
  function collectStorage(){const out={version:'4.0.0',exportedAt:new Date().toISOString(),items:{}}; Object.keys(localStorage).filter(k=>k.startsWith('sql-master-')).forEach(k=>out.items[k]=localStorage.getItem(k)); return out;}
  function backupAll(){download('backup-sql-elearning-v4.json',JSON.stringify(collectStorage(),null,2),'application/json');}
  function restoreAll(e){const f=e.target.files?.[0]; if(!f) return; const r=new FileReader(); r.onload=()=>{try{const obj=JSON.parse(r.result); Object.entries(obj.items||{}).forEach(([k,v])=>localStorage.setItem(k,v)); toast('Backup dipulihkan. Muat ulang halaman.');}catch(err){toast('File backup tidak valid.');}}; r.readAsText(f);}
  function exportCsv(){const s=stats(); const rows=[['indikator','nilai'],['modul_selesai',s.done],['total_modul',s.totalLessons],['latihan_selesai',s.ex],['total_latihan',s.totalExercises],['quiz_selesai',s.quiz],['total_quiz',s.totalQuiz],['persen',s.percent]]; download('progress-sql-v4.csv',rows.map(r=>r.map(x=>`"${String(x).replace(/"/g,'""')}"`).join(',')).join('\n'),'text/csv');}
  function transcriptHtml(){const s=stats(); const html=`<!doctype html><html><meta charset="utf-8"><title>Transkrip SQL v4</title><style>body{font-family:Arial;padding:32px;line-height:1.6}table{border-collapse:collapse;width:100%}td,th{border:1px solid #ddd;padding:8px}</style><h1>Transkrip Belajar SQL v4</h1><p>Diekspor: ${new Date().toLocaleString('id-ID')}</p><table><tr><th>Indikator</th><th>Nilai</th></tr><tr><td>Modul</td><td>${s.done}/${s.totalLessons}</td></tr><tr><td>Latihan</td><td>${s.ex}/${s.totalExercises}</td></tr><tr><td>Quiz</td><td>${s.quiz}/${s.totalQuiz}</td></tr><tr><td>Progress</td><td>${s.percent}%</td></tr></table></html>`; download('transkrip-belajar-sql-v4.html',html,'text/html');}
  function copyCurrentLessonQueries(){const l=currentLesson(); const text=[l.mainQuery,l.exerciseQuery,...(l.exercises||[]).map(e=>e.solution)].filter(Boolean).join('\n\n'); navigator.clipboard?.writeText(text).then(()=>toast('Query modul disalin.')).catch(()=>download('query-modul.sql',text,'text/plain'));}
  function downloadCurrentLessonMarkdown(){const l=currentLesson(); const md=`# ${l.title}\n\n${l.subtitle}\n\n## Tujuan\n${(l.objectives||[]).map(x=>'- '+x).join('\n')}\n\n## Materi\n${(l.theory||[]).join('\n\n')}\n\n## Query Utama\n\n\`\`\`sql\n${l.mainQuery}\n\`\`\`\n\n## Latihan\n${(l.exercises||[]).map((e,i)=>`### ${i+1}. ${e.title}\n${e.prompt}\n\n\`\`\`sql\n${e.solution}\n\`\`\``).join('\n\n')}`; download(`modul-${String(l.id).padStart(3,'0')}.md`,md,'text/markdown');}
  function shuffle(a){return a.map(x=>[Math.random(),x]).sort((x,y)=>x[0]-y[0]).map(x=>x[1]);}
  function download(name,content,type){const blob=new Blob([content],{type}); const a=document.createElement('a'); a.href=URL.createObjectURL(blob); a.download=name; a.click(); setTimeout(()=>URL.revokeObjectURL(a.href),500);}
  function toast(msg){const t=$('toast'); if(t){t.textContent=msg; t.classList.add('show'); setTimeout(()=>t.classList.remove('show'),2600);} else console.log(msg);}
  if(document.readyState==='loading') document.addEventListener('DOMContentLoaded',init); else init();
})();
