(function () {
  const data = window.SQL_APP_DATA;
  const $ = (id) => document.getElementById(id);
  const engine = new MiniSQLEngine(data.database);
  const PREFIX = 'sql-master-v30:';
  const LEGACY_PREFIX = 'sql-master-v21:';
  const memoryStore = {};

  const store = {
    get(key, fallback = null) {
      const parseStored = (raw) => {
        if (raw === null) return null;
        try { return JSON.parse(raw); } catch (e) { return raw; }
      };
      try {
        const value = parseStored(localStorage.getItem(PREFIX + key));
        if (value !== null) return value;
        const legacy = parseStored(localStorage.getItem(LEGACY_PREFIX + key));
        if (legacy !== null) return legacy;
      } catch (e) {
        if (Object.prototype.hasOwnProperty.call(memoryStore, key)) return memoryStore[key];
      }
      return fallback;
    },
    set(key, value) {
      memoryStore[key] = value;
      try { localStorage.setItem(PREFIX + key, JSON.stringify(value)); } catch (e) {}
    },
    remove(key) {
      delete memoryStore[key];
      try { localStorage.removeItem(PREFIX + key); localStorage.removeItem(LEGACY_PREFIX + key); } catch (e) {}
    }
  };

  let currentLesson = data.lessons.find((l) => l.id === store.get('currentLessonId')) || data.lessons[0];
  let activeTab = store.get('activeTab', 'materi');
  let activeLevel = 'Semua';
  let playgroundVisible = store.get('playgroundVisible', true);

  const totalLessons = data.lessons.length;
  const totalExercises = data.lessons.reduce((n, l) => n + (l.exercises?.length || 0), 0);
  const totalQuiz = data.lessons.reduce((n, l) => n + (l.quiz?.length || 0), 0);
  const totalItems = totalLessons + totalExercises + totalQuiz;

  function escapeHtml(x) {
    return String(x ?? '').replace(/[&<>"']/g, (m) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[m]));
  }
  function getDoneLessons() { return store.get('done', []); }
  function setDoneLessons(v) { store.set('done', [...new Set(v)]); }
  function getDoneExercises() { return store.get('doneExercises', []); }
  function setDoneExercises(v) { store.set('doneExercises', [...new Set(v)]); }
  function getQuizAnswers() { return store.get('quizAnswers', {}); }
  function setQuizAnswers(v) { store.set('quizAnswers', v); }
  function getParticipantName() { return (store.get('participantName', '') || '').trim(); }
  function setParticipantName(name) { store.set('participantName', name.trim()); }
  function exerciseKey(lessonId, index) { return `${lessonId}-${index}`; }
  function quizKey(lessonId, index) { return `${lessonId}-${index}`; }
  function validQuizAnsweredCount() {
    const answers = getQuizAnswers();
    let count = 0;
    data.lessons.forEach((l) => (l.quiz || []).forEach((_, i) => { if (answers[quizKey(l.id, i)]) count += 1; }));
    return count;
  }
  function completionStats() {
    const lessons = getDoneLessons().filter((id) => data.lessons.some((l) => l.id === id)).length;
    const exercises = getDoneExercises().filter((key) => {
      const [lessonId, index] = key.split('-').map(Number);
      const lesson = data.lessons.find((l) => l.id === lessonId);
      return lesson && lesson.exercises && lesson.exercises[index];
    }).length;
    const quiz = validQuizAnsweredCount();
    const percent = Math.round(((lessons + exercises + quiz) / totalItems) * 100);
    return { lessons, exercises, quiz, percent };
  }
  function isCertificateEligible() {
    const s = completionStats();
    return Boolean(getParticipantName()) && s.lessons === totalLessons && s.exercises === totalExercises && s.quiz === totalQuiz;
  }
  function toast(msg) {
    const t = $('toast');
    t.textContent = msg;
    t.classList.add('show');
    setTimeout(() => t.classList.remove('show'), 2400);
  }

  function resultToTable(result) {
    if (!result) return '<div class="error-box">Tidak ada hasil.</div>';
    if (result.type === 'message') return `<div class="message-box">${escapeHtml(result.message)}</div>`;
    const rows = result.rows || [];
    const cols = result.columns && result.columns.length ? result.columns : Object.keys(rows[0] || {});
    if (!rows.length) return '<div class="message-box">Query berhasil, tetapi tidak ada baris hasil.</div>';
    return `<div class="output-table"><table><thead><tr>${cols.map((c) => `<th>${escapeHtml(c)}</th>`).join('')}</tr></thead><tbody>${rows.map((r) => `<tr>${cols.map((c) => `<td>${escapeHtml(r[c])}</td>`).join('')}</tr>`).join('')}</tbody></table></div>`;
  }
  function runPreview(query) {
    try {
      const e = new MiniSQLEngine(data.database);
      return resultToTable(e.execute(query));
    } catch (err) {
      return `<div class="error-box"><strong>Catatan engine:</strong> ${escapeHtml(err.message)}<br><small>Query ini tetap dapat dijalankan pada DBMS penuh seperti MySQL, PostgreSQL, atau SQLite apabila sintaks didukung.</small></div>`;
    }
  }
  function renderSqlBlock(title, query, canLoad = true) {
    return `<div class="sql-block"><div class="sql-block-head"><strong>${escapeHtml(title)}</strong>${canLoad ? `<button class="load-query" data-query="${escapeHtml(query)}">Muat ke Playground</button>` : ''}</div><pre><code>${highlightSql(query)}</code></pre></div>`;
  }

  function levels() { return ['Semua', ...new Set(data.lessons.map((l) => l.level))]; }
  function renderFilters() {
    $('levelFilters').innerHTML = levels().map((l) => `<button class="filter-chip ${l === activeLevel ? 'active' : ''}" data-level="${escapeHtml(l)}">${escapeHtml(l)}</button>`).join('');
    document.querySelectorAll('.filter-chip').forEach((b) => {
      b.onclick = () => { activeLevel = b.dataset.level; renderFilters(); renderNav($('lessonSearch').value || ''); };
    });
  }
  function renderNav(search = '') {
    const done = getDoneLessons();
    const q = search.toLowerCase();
    const list = data.lessons.filter((l) => (activeLevel === 'Semua' || l.level === activeLevel) && (`${l.title} ${l.subtitle} ${l.level}`.toLowerCase().includes(q)));
    $('lessonNav').innerHTML = list.map((l) => `<button class="${currentLesson.id === l.id ? 'active' : ''}" data-id="${l.id}"><strong>${String(l.id).padStart(2, '0')}. ${escapeHtml(l.title)}</strong><small>${escapeHtml(l.level)} • ${l.estimatedMinutes} menit ${done.includes(l.id) ? '<span class="done-mark">• selesai</span>' : ''}</small></button>`).join('') || '<p style="color:var(--muted);padding:8px">Materi tidak ditemukan.</p>';
    $('lessonNav').querySelectorAll('button').forEach((btn) => { btn.onclick = () => selectLesson(Number(btn.dataset.id)); });
  }
  function updateParticipantUI() {
    const name = getParticipantName();
    $('participantPill').textContent = name || 'Belum diisi';
    $('participantNameInput').value = name;
  }
  function updateProgress() {
    const s = completionStats();
    $('miniProgress').textContent = `${s.percent}%`;
    $('miniProgressBar').style.width = `${s.percent}%`;
    $('certificateBtn').textContent = isCertificateEligible() ? 'Ambil Sertifikat' : 'Sertifikat';
    const progressEl = $('dashboardProgress');
    if (progressEl) {
      progressEl.innerHTML = [
        ['Sesi selesai', `${s.lessons}/${totalLessons}`],
        ['Latihan selesai', `${s.exercises}/${totalExercises}`],
        ['Quiz terjawab', `${s.quiz}/${totalQuiz}`]
      ].map(([a, b]) => `<div class="progress-tile"><strong>${b}</strong><span>${a}</span></div>`).join('');
    }
  }
  function renderStats() {
    $('heroStats').innerHTML = [
      ['Modul', totalLessons],
      ['Latihan', totalExercises],
      ['Quiz', totalQuiz],
      ['Database', 'toko_pintar']
    ].map(([a, b]) => `<div><strong>${b}</strong><span>${a}</span></div>`).join('');
  }
  function selectLesson(id) {
    currentLesson = data.lessons.find((l) => l.id === id) || data.lessons[0];
    activeTab = 'materi';
    store.set('currentLessonId', currentLesson.id);
    store.set('activeTab', activeTab);
    $('dashboardView').classList.add('hide');
    try { location.hash = 'modul-' + String(currentLesson.id).padStart(2, '0'); } catch(e) {}
    renderLesson();
    renderNav($('lessonSearch').value || '');
    if (window.innerWidth < 1180) {
      $('sidebar').classList.remove('show');
      var backdrop = $('sidebarBackdrop');
      if (backdrop) backdrop.classList.remove('show');
    }
    $('lessonView').scrollIntoView({ behavior: 'smooth', block: 'start' });
  }
  function renderLesson() {
    const l = currentLesson;
    $('breadcrumbs').textContent = `Dashboard / ${l.level} / ${l.title}`;
    $('lessonLevel').textContent = l.level;
    $('lessonTitle').textContent = l.title;
    $('lessonSubtitle').textContent = l.subtitle;
    $('lessonMeta').innerHTML = `<span class="meta-pill">Estimasi ${l.estimatedMinutes} menit</span><span class="meta-pill">Kesulitan ${'●'.repeat(l.difficulty)}${'○'.repeat(5 - l.difficulty)}</span><span class="meta-pill">${l.levelDescription}</span>`;
    document.querySelectorAll('.tab').forEach((t) => t.classList.toggle('active', t.dataset.tab === activeTab));
    const done = getDoneLessons();
    $('markDoneBtn').textContent = done.includes(l.id) ? 'Sesi Selesai ✓' : 'Tandai Sesi Selesai';
    const body = $('lessonBody');
    if (activeTab === 'materi') body.innerHTML = renderMateri(l) + '<div id="lessonAddonsMount"></div>';
    if (activeTab === 'studi') body.innerHTML = renderStudi(l);
    if (activeTab === 'latihan') body.innerHTML = renderLatihan(l);
    if (activeTab === 'quiz') body.innerHTML = renderQuiz(l);
    if (activeTab === 'checklist') body.innerHTML = renderChecklist(l);
    bindLessonButtons();
    updateProgress();
  }
  function renderMateri(l) {
    return `<h3>Tujuan Pembelajaran</h3><ul>${l.objectives.map((o) => `<li>${escapeHtml(o)}</li>`).join('')}</ul>
      <div class="callout"><strong>Prinsip belajar:</strong> baca konsep, jalankan query, periksa output, lalu ubah kondisi query untuk menguji pemahaman. Posisi playground dibuat tetap, sehingga query dapat dimuat tanpa kembali ke bagian atas halaman.</div>
      <h3>Uraian Materi</h3>${l.theory.map((p) => `<p>${escapeHtml(p)}</p>`).join('')}
      <h3>Konsep Inti</h3><ul>${l.concepts.map((c) => `<li>${escapeHtml(c)}</li>`).join('')}</ul>
      ${renderSqlBlock('Query contoh utama', l.mainQuery)}
      <h3>Output Simulasi</h3>${runPreview(l.mainQuery)}
      <h3>Kesalahan Umum</h3><ul>${l.commonMistakes.map((m) => `<li>${escapeHtml(m)}</li>`).join('')}</ul>`;
  }
  function renderStudi(l) {
    return `<h3>Studi Kasus</h3><p>${escapeHtml(l.caseText)}</p>
      <div class="callout warning"><strong>Tugas analis:</strong> tuliskan interpretasi output dalam 3 kalimat: kondisi data, informasi bisnis, dan keputusan yang disarankan.</div>
      ${renderSqlBlock('Query studi kasus', l.mainQuery)}
      <h3>Output Studi Kasus</h3>${runPreview(l.mainQuery)}
      <h3>Pembahasan Step-by-Step</h3><div class="step-list"><div class="step"><strong>1. Rumuskan kebutuhan data.</strong><p>Pastikan pertanyaan bisnis jelas sebelum memilih tabel.</p></div><div class="step"><strong>2. Pilih tabel dan relasi.</strong><p>Gunakan data dictionary untuk mengecek primary key dan foreign key.</p></div><div class="step"><strong>3. Validasi output.</strong><p>Periksa jumlah baris, nilai agregasi, NULL, dan urutan hasil.</p></div><div class="step"><strong>4. Simpulkan hasil.</strong><p>Output SQL harus diterjemahkan menjadi informasi, bukan berhenti sebagai tabel.</p></div></div>`;
  }
  function renderLatihan(l) {
    const doneExercises = getDoneExercises();
    return `<h3>Latihan Bertingkat</h3><p>Kerjakan latihan tanpa melihat solusi terlebih dahulu. Uji hasil query Anda menggunakan tombol Uji Query.</p><div class="callout"><button class="success-btn" id="markAllExercisesBtn">Tandai Semua Latihan Modul Ini Selesai</button></div>${l.exercises.map((e, i) => {
      const key = exerciseKey(l.id, i);
      const done = doneExercises.includes(key);
      return `<div class="exercise-card"><h4>${i + 1}. ${escapeHtml(e.title)}</h4><p>${escapeHtml(e.prompt)}</p><div class="exercise-actions"><button class="reveal-btn" data-reveal="ex-${i}">Tampilkan Solusi</button><button class="test-query-btn" data-exercise-index="${i}">🧪 Uji Query Saya</button><button class="exercise-done-btn ${done ? 'done' : ''}" data-exercise="${key}">${done ? 'Latihan Selesai ✓' : 'Tandai Latihan Selesai'}</button></div><div id="ex-${i}" class="hide">${renderSqlBlock('Solusi latihan', e.solution)}</div></div>`;
    }).join('')}
      <h3>Output Latihan Utama</h3>${runPreview(l.exerciseQuery)}
      <h3>Catatan Profesional</h3><ul>${l.professionalNotes.map((n) => `<li>${escapeHtml(n)}</li>`).join('')}</ul>`;
  }
  function renderQuiz(l) {
    const answers = getQuizAnswers();
    return `<h3>Quiz Cepat</h3><p>Jawaban quiz disimpan otomatis di perangkat ini. Quiz dianggap terjawab setelah salah satu opsi dipilih.</p>${l.quiz.map((q, qi) => {
      const saved = answers[quizKey(l.id, qi)];
      return `<div class="quiz-card"><p><strong>${qi + 1}. ${escapeHtml(q.question)}</strong></p><div class="quiz-list">${q.options.map((o, i) => {
        let cls = '';
        if (saved && saved.index === i) cls = saved.correct ? 'correct' : 'wrong';
        if (saved && i === q.answer) cls = 'correct';
        return `<button class="quiz-option ${cls}" data-q="${qi}" data-index="${i}">${escapeHtml(o)}</button>`;
      }).join('')}</div><div id="quiz-feedback-${qi}" class="callout ${saved ? '' : 'hide'}">${saved ? ((saved.correct ? '<strong>Benar.</strong> ' : '<strong>Belum tepat.</strong> ') + escapeHtml(q.explanation)) : ''}</div></div>`;
    }).join('')}`;
  }
  function renderChecklist(l) {
    return `<h3>Checklist Penguasaan</h3><ul>${l.checklist.map((c) => `<li>${escapeHtml(c)}</li>`).join('')}</ul><div class="callout"><strong>Proyek mini:</strong> ${escapeHtml(l.projectTask)}</div><div class="callout success-callout"><button class="success-btn" id="finishModuleFromChecklistBtn">Tandai Modul Ini Selesai</button></div><h3>Rubrik Penilaian Mandiri</h3><div class="step-list"><div class="step"><strong>Skor 1</strong><p>Query masih menyalin contoh tanpa memahami output.</p></div><div class="step"><strong>Skor 2</strong><p>Query dapat berjalan, tetapi interpretasi belum konsisten.</p></div><div class="step"><strong>Skor 3</strong><p>Query, output, dan interpretasi sudah sesuai kebutuhan bisnis.</p></div><div class="step"><strong>Skor 4</strong><p>Query dapat dimodifikasi untuk variasi kasus dan risiko kesalahan dapat dijelaskan.</p></div></div>`;
  }
  function bindLessonButtons() {
    document.querySelectorAll('.load-query').forEach((btn) => {
      btn.onclick = () => {
        $('sqlEditor').value = btn.dataset.query;
        store.set('sqlDraft', $('sqlEditor').value);
        $('sqlEditor').dispatchEvent(new Event('input'));
        if (window.innerWidth <= 1180) {
          setPlaygroundVisible(true);
          setTimeout(() => {
            $('workspaceGrid').scrollIntoView({ behavior: 'smooth', block: 'start' });
            $('sqlEditor').focus();
          }, 80);
          toast('Query dimuat ke playground!');
        } else {
          if (!playgroundVisible) setPlaygroundVisible(true);
          toast('Query dimuat ke playground. Posisi baca tidak dipindahkan.');
        }
      };
    });
    document.querySelectorAll('.reveal-btn').forEach((btn) => {
      btn.onclick = () => { const el = $(btn.dataset.reveal); if (el) el.classList.toggle('hide'); };
    });
    document.querySelectorAll('.test-query-btn').forEach((btn) => {
      btn.onclick = () => {
        const idx = Number(btn.dataset.exerciseIndex);
        testUserQuery(idx);
      };
    });
    document.querySelectorAll('.exercise-done-btn').forEach((btn) => {
      btn.onclick = () => {
        const key = btn.dataset.exercise;
        const done = getDoneExercises();
        setDoneExercises(done.includes(key) ? done.filter((x) => x !== key) : [...done, key]);
        renderLesson();
        renderNav($('lessonSearch').value || '');
        toast('Progress latihan diperbarui.');
      };
    });
    const markAll = $('markAllExercisesBtn');
    if (markAll) markAll.onclick = () => {
      const keys = currentLesson.exercises.map((_, i) => exerciseKey(currentLesson.id, i));
      setDoneExercises([...getDoneExercises(), ...keys]);
      renderLesson();
      toast('Semua latihan pada modul ini ditandai selesai.');
    };
    const finishFromChecklist = $('finishModuleFromChecklistBtn');
    if (finishFromChecklist) finishFromChecklist.onclick = toggleLessonDone;
    document.querySelectorAll('.quiz-option').forEach((btn) => {
      btn.onclick = () => {
        const qi = Number(btn.dataset.q);
        const idx = Number(btn.dataset.index);
        const q = currentLesson.quiz[qi];
        const ok = idx === q.answer;
        const answers = getQuizAnswers();
        answers[quizKey(currentLesson.id, qi)] = { index: idx, correct: ok, updatedAt: new Date().toISOString() };
        setQuizAnswers(answers);
        renderLesson();
        renderNav($('lessonSearch').value || '');
      };
    });
  }

  function runSql() {
    const start = performance.now();
    try {
      const result = engine.execute($('sqlEditor').value);
      $('sqlResult').innerHTML = resultToTable(result);
      const rows = result.rows ? result.rows.length : (result.affectedRows || 0);
      $('resultMeta').textContent = `${rows} baris • ${(performance.now() - start).toFixed(1)} ms`;
      store.set('sqlDraft', $('sqlEditor').value);
    } catch (err) {
      $('sqlResult').innerHTML = `<div class="error-box"><strong>Error:</strong> ${escapeHtml(err.message)}<br><small>Engine browser ini mendukung subset SQL. Untuk fitur DBMS penuh, jalankan file sql/database_toko_pintar.sql pada MySQL, PostgreSQL, atau SQLite.</small></div>`;
      $('resultMeta').textContent = 'Query gagal';
    }
  }
  function simpleFormat(sql) {
    return sql.replace(/\s+/g, ' ')
      .replace(/\b(SELECT|FROM|WHERE|JOIN|LEFT JOIN|RIGHT JOIN|INNER JOIN|GROUP BY|HAVING|ORDER BY|LIMIT|VALUES|SET|WITH|UNION|EXPLAIN)\b/gi, '\n$1')
      .replace(/^\n/, '')
      .replace(/,\s*/g, ',\n       ')
      .trim();
  }
  async function copySql() {
    const value = $('sqlEditor').value;
    try {
      await navigator.clipboard.writeText(value);
    } catch (e) {
      const ta = $('sqlEditor');
      ta.focus();
      ta.select();
      document.execCommand('copy');
    }
    toast('Query disalin.');
  }

  function highlightSql(sql) {
    const regex = /(--[^\n]*|\/\*[^]*?\*\/)|('(?:''|[^'])*'|"(?:""|[^"])*"|`[^`]*`)|(\b(?:SELECT|FROM|WHERE|JOIN|LEFT|RIGHT|INNER|ON|GROUP BY|ORDER BY|HAVING|LIMIT|AND|OR|IN|NOT|LIKE|IS|NULL|INSERT|INTO|VALUES|UPDATE|SET|DELETE|CREATE|TABLE|DROP|ALTER|ADD|AS|DESC|ASC|WITH|UNION|ALL|CASE|WHEN|THEN|ELSE|END|OVER|PARTITION BY|ROW_NUMBER|RANK|DENSE_RANK)\b)|(\b\d+(?:\.\d+)?\b)|(\b(?:SUM|AVG|COUNT|MIN|MAX|COALESCE|CONCAT|IFNULL|ROUND)\b(?=\s*\()))|((?:[<>=!]+|\+|-|\*|\/))/gi;

    let result = '';
    let lastIndex = 0;
    let match;

    const escHtml = (str) => str.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');

    while ((match = regex.exec(sql)) !== null) {
      result += escHtml(sql.substring(lastIndex, match.index));

      const [full, comment, string, keyword, number, func, operator] = match;
      const escapedMatch = escHtml(full);

      if (comment) {
        result += `<span class="sql-token-comment">${escapedMatch}</span>`;
      } else if (string) {
        result += `<span class="sql-token-string">${escapedMatch}</span>`;
      } else if (keyword) {
        result += `<span class="sql-token-keyword">${escapedMatch}</span>`;
      } else if (number) {
        result += `<span class="sql-token-number">${escapedMatch}</span>`;
      } else if (func) {
        result += `<span class="sql-token-function">${escapedMatch}</span>`;
      } else if (operator) {
        result += `<span class="sql-token-operator">${escapedMatch}</span>`;
      } else {
        result += escapedMatch;
      }

      lastIndex = regex.lastIndex;
    }

    result += escHtml(sql.substring(lastIndex));
    return result;
  }

  function setupEditorUpgrades() {
    const editor = $('sqlEditor');
    const numbers = $('lineNumbers');
    const highlightLayer = $('highlightLayer');
    const highlightCode = $('highlightCode');
    if (!editor || !numbers) return;

    // Sync scroll
    editor.addEventListener('scroll', () => {
      numbers.scrollTop = editor.scrollTop;
      if (highlightLayer) {
        highlightLayer.scrollTop = editor.scrollTop;
        highlightLayer.scrollLeft = editor.scrollLeft;
      }
    });

    // Update numbers and highlight
    const updateEditor = () => {
      // Update line numbers
      const linesCount = editor.value.split('\n').length;
      let html = '';
      for (let i = 1; i <= linesCount; i++) {
        html += `<div>${i}</div>`;
      }
      numbers.innerHTML = html;

      // Update highlight layer
      if (highlightCode) {
        let val = editor.value;
        if (val.endsWith('\n')) val += ' ';
        highlightCode.innerHTML = highlightSql(val);
      }
    };

    editor.addEventListener('input', updateEditor);
    updateEditor(); // Initial call

    // Autocomplete Setup
    setupAutocomplete(editor);
  }

  const SQL_SUGGESTIONS = [
    'SELECT', 'FROM', 'WHERE', 'JOIN', 'LEFT JOIN', 'INNER JOIN', 'ON', 'GROUP BY', 'ORDER BY', 
    'LIMIT', 'AND', 'OR', 'AS', 'SUM', 'COUNT', 'AVG', 'MIN', 'MAX', 'HAVING', 'INSERT', 'UPDATE', 'DELETE',
    // Tables
    'pelanggan', 'produk', 'pesanan', 'detail_pesanan', 'kategori', 'pembayaran', 'pengiriman',
    // Columns
    'pelanggan_id', 'nama', 'email', 'telepon', 'kota',
    'produk_id', 'nama_produk', 'harga', 'stok', 'kategori_id',
    'pesanan_id', 'tanggal_pesan', 'total', 'status',
    'jumlah', 'subtotal',
    'nama_kategori',
    'pembayaran_id', 'metode_bayar', 'status_bayar', 'tanggal_bayar',
    'pengiriman_id', 'kurir', 'no_resi', 'status_kirim', 'tanggal_kirim'
  ];

  function setupAutocomplete(editor) {
    const bar = $('suggestionBar');
    if (!bar) return;

    const handleSuggest = () => {
      const pos = editor.selectionStart;
      const val = editor.value.substring(0, pos);
      const match = val.match(/[\w_]+$/i);
      
      if (!match) {
        bar.style.display = 'none';
        return;
      }

      const word = match[0].toLowerCase();
      const filtered = SQL_SUGGESTIONS.filter(s => s.toLowerCase().startsWith(word) && s.toLowerCase() !== word).slice(0, 7);

      if (filtered.length === 0) {
        bar.style.display = 'none';
        return;
      }

      bar.innerHTML = filtered.map(s => `<button class="suggest-chip" data-insert="${s}">${escapeHtml(s)}</button>`).join('');
      bar.style.display = 'flex';

      bar.querySelectorAll('.suggest-chip').forEach(btn => {
        btn.onclick = (e) => {
          e.preventDefault();
          const insertText = btn.dataset.insert;
          const currentVal = editor.value;
          const start = pos - word.length;
          
          editor.value = currentVal.substring(0, start) + insertText + ' ' + currentVal.substring(pos);
          editor.focus();
          const newCursorPos = start + insertText.length + 1;
          editor.setSelectionRange(newCursorPos, newCursorPos);
          
          store.set('sqlDraft', editor.value);
          bar.style.display = 'none';
          
          const event = new Event('input');
          editor.dispatchEvent(event);
        };
      });
    };

    editor.addEventListener('input', handleSuggest);
    editor.addEventListener('keyup', (e) => {
      if (['ArrowLeft', 'ArrowRight', 'ArrowUp', 'ArrowDown', 'Escape'].includes(e.key)) {
        bar.style.display = 'none';
      } else {
        handleSuggest();
      }
    });
    editor.addEventListener('click', () => {
      bar.style.display = 'none';
    });
  }

  function testUserQuery(idx) {
    const l = currentLesson;
    const exercise = l.exercises[idx];
    if (!exercise) return;

    const userQuery = $('sqlEditor').value.trim();
    if (!userQuery) {
      toast('Tulis query Anda terlebih dahulu di Playground SQL.');
      return;
    }

    try {
      const userRes = engine.execute(userQuery);
      const solRes = engine.execute(exercise.solution);

      const userCols = userRes.columns || [];
      const solCols = solRes.columns || [];

      if (userCols.length !== solCols.length) {
        toast('❌ Jumlah kolom hasil query Anda tidak sesuai dengan solusi.');
        return;
      }

      for (let i = 0; i < solCols.length; i++) {
        if (userCols[i].toLowerCase() !== solCols[i].toLowerCase()) {
          toast(`❌ Nama kolom tidak sesuai. Diharapkan "${solCols[i]}" tapi mendapatkan "${userCols[i]}".`);
          return;
        }
      }

      const userRows = userRes.rows || [];
      const solRows = solRes.rows || [];

      if (userRows.length !== solRows.length) {
        toast(`❌ Jumlah baris tidak sesuai. Diharapkan ${solRows.length} baris, tapi mendapatkan ${userRows.length} baris.`);
        return;
      }

      for (let r = 0; r < solRows.length; r++) {
        const userRow = userRows[r];
        const solRow = solRows[r];
        for (let c = 0; c < solCols.length; c++) {
          const colName = solCols[c];
          const userVal = userRow[colName];
          const solVal = solRow[colName];
          
          if (String(userVal).trim().toLowerCase() !== String(solVal).trim().toLowerCase()) {
            toast(`❌ Data baris ke-${r+1} pada kolom "${colName}" tidak sesuai.`);
            return;
          }
        }
      }

      const key = exerciseKey(l.id, idx);
      const done = getDoneExercises();
      if (!done.includes(key)) {
        setDoneExercises([...done, key]);
        renderLesson();
        renderNav($('lessonSearch').value || '');
      }

      toast('🎉 Sukses! Output query cocok 100% dengan solusi. Latihan ditandai selesai!');
    } catch (err) {
      toast(`❌ Query error: ${err.message}`);
    }
  }

  function renderDictionary() {
    $('dictionaryContent').innerHTML = `<div class="dictionary-grid">${Object.entries(data.database).map(([table, rows]) => {
      const cols = Object.keys(rows[0] || {});
      return `<div class="dict-card"><h3>${escapeHtml(table)}</h3>${cols.map((c) => `<div><code>${escapeHtml(c)}</code><span>${escapeHtml(typeof (rows[0]?.[c]))}</span></div>`).join('')}</div>`;
    }).join('')}</div><h3>Glosarium</h3><div class="dictionary-grid">${data.glossary.map((g) => `<div class="dict-card"><h3>${escapeHtml(g.term)}</h3><p>${escapeHtml(g.definition)}</p></div>`).join('')}</div>`;
  }
  function renderProjects() {
    $('projectContent').innerHTML = `<div class="project-grid">${data.projects.map((p) => `<div class="project-card"><h3>${escapeHtml(p.title)}</h3><p>${escapeHtml(p.brief)}</p><div class="callout"><strong>Output:</strong> ${escapeHtml(p.deliverable)}</div></div>`).join('')}</div>`;
  }
  function renderShortcuts() {
    const qs = [
      ['Semua tabel', 'SHOW TABLES;'],
      ['Top produk termahal', 'SELECT nama_produk, harga, stok FROM produk ORDER BY harga DESC LIMIT 5;'],
      ['Omzet per status', 'SELECT status, COUNT(*) AS jumlah, SUM(total) AS total_nilai FROM pesanan GROUP BY status;'],
      ['Order + pelanggan', 'SELECT ps.pesanan_id, p.nama, ps.status, ps.total FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id ORDER BY ps.pesanan_id;'],
      ['Produk per kategori', 'SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk FROM kategori k LEFT JOIN produk pr ON k.kategori_id = pr.kategori_id GROUP BY k.nama_kategori;'],
      ['Pembayaran pending', "SELECT ps.pesanan_id, p.nama, pb.status_bayar, ps.total FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id JOIN pembayaran pb ON ps.pesanan_id = pb.pesanan_id WHERE pb.status_bayar = 'pending';"]
    ];
    $('shortcutList').innerHTML = qs.map((x) => `<button data-query="${escapeHtml(x[1])}">${escapeHtml(x[0])}</button>`).join('');
    $('shortcutList').querySelectorAll('button').forEach((b) => {
      b.onclick = () => { $('sqlEditor').value = b.dataset.query; store.set('sqlDraft', $('sqlEditor').value); $('sqlEditor').dispatchEvent(new Event('input')); if (!playgroundVisible) setPlaygroundVisible(true); runSql(); };
    });
  }
  function renderCheats() {
    $('cheatList').innerHTML = data.cheatsheets.map((c) => `<div class="cheat-title">${escapeHtml(c.title)}</div><ul class="cheat-list">${c.items.map((i) => `<li>${escapeHtml(i)}</li>`).join('')}</ul>`).join('');
  }

  function setTheme(theme) {
    document.documentElement.dataset.theme = theme;
    store.set('theme', theme);
    try { localStorage.setItem(PREFIX + 'theme', JSON.stringify(theme)); } catch (e) {}
    $('themeBtn').textContent = theme === 'dark' ? '☀️ Light' : '🌙 Mode';
  }
  function applyTheme() {
    const saved = store.get('theme', document.documentElement.dataset.theme || 'light');
    setTheme(saved);
  }
  function setPlaygroundVisible(value) {
    playgroundVisible = value;
    store.set('playgroundVisible', value);
    $('workspaceGrid').classList.toggle('playground-hidden', !value);
    $('togglePlaygroundBtn').textContent = value ? '⚡ Playground' : '⚡ Playground';
    $('floatingPlaygroundBtn').classList.toggle('show', !value);

    // Sync Mobile Bottom Navigation Active States
    const tabMateri = $('btnTabMateri');
    const tabPlayground = $('btnTabPlayground');
    if (tabMateri && tabPlayground) {
      tabMateri.classList.toggle('active', !value);
      tabPlayground.classList.toggle('active', value);
      $('workspaceGrid').classList.toggle('show-playground-mobile', value);
    }
  }
  function toggleLessonDone() {
    const done = getDoneLessons();
    setDoneLessons(done.includes(currentLesson.id) ? done.filter((x) => x !== currentLesson.id) : [...done, currentLesson.id]);
    updateProgress();
    renderNav($('lessonSearch').value || '');
    renderLesson();
    toast('Progress sesi diperbarui.');
  }
  function openNameModal(force = false) {
    $('participantNameInput').value = getParticipantName();
    $('nameModal').classList.add('show');
    if (force) $('participantNameInput').focus();
  }
  function saveName() {
    const name = $('participantNameInput').value.trim();
    if (!name) { toast('Nama peserta belum diisi.'); return; }
    setParticipantName(name);
    updateParticipantUI();
    updateProgress();
    $('nameModal').classList.remove('show');
    toast('Nama peserta disimpan di perangkat ini.');
  }
  function renderProgressModal() {
    const s = completionStats();
    $('progressContent').innerHTML = `<div class="progress-grid"><div class="progress-tile"><strong>${s.lessons}/${totalLessons}</strong><span>Sesi selesai</span></div><div class="progress-tile"><strong>${s.exercises}/${totalExercises}</strong><span>Latihan selesai</span></div><div class="progress-tile"><strong>${s.quiz}/${totalQuiz}</strong><span>Quiz terjawab</span></div></div><div class="callout"><strong>Syarat sertifikat:</strong> nama peserta terisi, seluruh sesi ditandai selesai, seluruh latihan ditandai selesai, dan seluruh quiz sudah dijawab.</div>${data.lessons.map((l) => {
      const lessonDone = getDoneLessons().includes(l.id);
      const exerciseDone = (l.exercises || []).filter((_, i) => getDoneExercises().includes(exerciseKey(l.id, i))).length;
      const quizDone = (l.quiz || []).filter((_, i) => getQuizAnswers()[quizKey(l.id, i)]).length;
      return `<div class="progress-row"><div><strong>${String(l.id).padStart(2, '0')}. ${escapeHtml(l.title)}</strong><small>Sesi: ${lessonDone ? 'selesai' : 'belum'} • Latihan: ${exerciseDone}/${l.exercises.length} • Quiz: ${quizDone}/${l.quiz.length}</small></div><span>${lessonDone && exerciseDone === l.exercises.length && quizDone === l.quiz.length ? '✓' : '—'}</span></div>`;
    }).join('')}`;
  }
  function getCertificateDate() {
    let d = store.get('certificateDate', '');
    if (!d) {
      d = new Date().toISOString().slice(0, 10);
      store.set('certificateDate', d);
    }
    return d;
  }
  function certificateId() {
    let id = store.get('certificateId', '');
    if (!id) {
      const name = getParticipantName();
      const date = getCertificateDate();
      const percent = completionStats().percent;
      
      const raw = `${name}|${date}|${percent}`;
      // Encode
      const encoded = btoa(unescape(encodeURIComponent(raw)))
        .replace(/\+/g, '-')
        .replace(/\//g, '_')
        .replace(/=+$/, '');
        
      // Checksum
      const salt = "SQL-MASTER-2026-KEY";
      let hash = 0;
      const str = encoded + salt;
      for (let i = 0; i < str.length; i++) {
        hash = ((hash << 5) - hash) + str.charCodeAt(i);
        hash |= 0;
      }
      const checksum = Math.abs(hash).toString(36).toUpperCase();
      
      id = `SQL-${encoded}-${checksum}`;
      store.set('certificateId', id);
    }
    return id;
  }

  // Expose Cryptographic Cert Verifier Globally
  window.SQL_CERT_VERIFIER = {
    verify(id) {
      if (!id || !id.startsWith('SQL-')) return null;
      const content = id.substring(4);
      const lastDash = content.lastIndexOf('-');
      if (lastDash === -1) return null;
      
      const encoded = content.substring(0, lastDash);
      const checksum = content.substring(lastDash + 1);
      
      // Verify Checksum
      const salt = "SQL-MASTER-2026-KEY";
      let hash = 0;
      const str = encoded + salt;
      for (let i = 0; i < str.length; i++) {
        hash = ((hash << 5) - hash) + str.charCodeAt(i);
        hash |= 0;
      }
      const expectedChecksum = Math.abs(hash).toString(36).toUpperCase();
      
      if (checksum !== expectedChecksum) return null;
      
      // Decode Data
      try {
        const base64 = encoded.replace(/-/g, '+').replace(/_/g, '/');
        const raw = decodeURIComponent(escape(atob(base64)));
        const dataParts = raw.split('|');
        if (dataParts.length !== 3) return null;
        return {
          name: dataParts[0],
          date: dataParts[1],
          percent: dataParts[2]
        };
      } catch (e) {
        return null;
      }
    }
  };
  function renderCertificateModal() {
    const s = completionStats();
    const name = getParticipantName();
    const eligible = isCertificateEligible();
    $('certificateContent').innerHTML = eligible ? certificateHtml(name, s) : `<div class="certificate-locked"><div class="callout warning"><strong>Sertifikat belum dapat diterbitkan.</strong><br>Lengkapi seluruh syarat kelulusan terlebih dahulu.</div><div class="progress-grid"><div class="progress-tile"><strong>${name ? 'Terisi' : 'Belum'}</strong><span>Nama peserta</span></div><div class="progress-tile"><strong>${s.lessons}/${totalLessons}</strong><span>Sesi selesai</span></div><div class="progress-tile"><strong>${s.exercises}/${totalExercises}</strong><span>Latihan selesai</span></div><div class="progress-tile"><strong>${s.quiz}/${totalQuiz}</strong><span>Quiz terjawab</span></div></div><button class="primary-btn" id="fillNameFromCertBtn">Isi Nama Peserta</button></div>`;
    document.querySelector('.certificate-actions').classList.toggle('locked', !eligible);
    const fill = $('fillNameFromCertBtn');
    if (fill) fill.onclick = () => { $('certificateModal').classList.remove('show'); openNameModal(true); };
  }
  function certificateHtml(name, s) {
    const rawDate = getCertificateDate();
    const parsedDate = new Date(rawDate);
    const dateStr = isNaN(parsedDate.getTime()) ? rawDate : parsedDate.toLocaleDateString('id-ID', { day: '2-digit', month: 'long', year: 'numeric' });
    return `<div class="certificate-card"><div class="cert-kicker">Sertifikat Kelulusan</div><h1>SQL Dari Dasar Hingga Master</h1><p>Diberikan kepada</p><div class="cert-name">${escapeHtml(name)}</div><p>Atas keberhasilan menyelesaikan seluruh materi, latihan, dan quiz pada e-learning interaktif berbasis database <strong>toko_pintar</strong>.</p><div class="cert-meta"><div><span>Tanggal</span><strong>${dateStr}</strong></div><div><span>ID Sertifikat</span><strong>${certificateId()}</strong></div><div><span>Capaian</span><strong>${s.percent}%</strong></div></div><p style="margin-top:34px">SQL Masterclass • GitHub Pages Edition</p></div>`;
  }
  function downloadCertificate() {
    if (!isCertificateEligible()) return;
    const content = $('certificateContent').innerHTML;
    const html = `<!doctype html><html lang="id"><head><meta charset="utf-8"><title>Sertifikat SQL</title><style>${certificateDownloadCss()}</style></head><body>${content}</body></html>`;
    const blob = new Blob([html], { type: 'text/html' });
    const a = document.createElement('a');
    a.href = URL.createObjectURL(blob);
    a.download = `sertifikat-sql-${getParticipantName().toLowerCase().replace(/[^a-z0-9]+/gi, '-')}.html`;
    a.click();
    URL.revokeObjectURL(a.href);
  }
  function certificateDownloadCss() {
    return `body{margin:0;padding:24px;background:#f5f8fc;font-family:Inter,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif}.certificate-card{background:linear-gradient(135deg,#fff,#f1f7ff);color:#17243a;border:10px solid #c9a24c;outline:2px solid #17243a;border-radius:24px;padding:48px;text-align:center}.cert-kicker{letter-spacing:.22em;text-transform:uppercase;color:#5d6b81;font-weight:800;font-size:13px}.certificate-card h1{font-size:54px;margin:10px 0;color:#17243a}.cert-name{font-size:44px;font-family:Georgia,"Times New Roman",serif;color:#0b5f8f;margin:20px 0 10px;border-bottom:2px solid #c9a24c;display:inline-block;padding:0 28px 10px}.certificate-card p{color:#33445f;line-height:1.7}.cert-meta{display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin-top:30px;text-align:left}.cert-meta div{border:1px solid #d7e1ef;border-radius:14px;padding:12px;background:rgba(255,255,255,.7)}.cert-meta span{display:block;color:#68778e;font-size:12px}.cert-meta strong{color:#17243a}@media print{body{padding:0}.certificate-card{min-height:100vh;border-radius:0}}`;
  }

  document.addEventListener('click', (e) => {
    if (e.target.matches('.tab')) {
      activeTab = e.target.dataset.tab;
      store.set('activeTab', activeTab);
      renderLesson();
    }
    if (e.target.dataset.close) $(e.target.dataset.close).classList.remove('show');
  });

  $('runSqlBtn').onclick = runSql;
  $('formatSqlBtn').onclick = () => { $('sqlEditor').value = simpleFormat($('sqlEditor').value); store.set('sqlDraft', $('sqlEditor').value); $('sqlEditor').dispatchEvent(new Event('input')); };
  $('copySqlBtn').onclick = copySql;
  $('resetDbBtn').onclick = () => { engine.reset(); runSql(); toast('Database browser direset.'); };
  $('sqlEditor').addEventListener('input', () => store.set('sqlDraft', $('sqlEditor').value));
  $('menuBtn').onclick = () => {
    const sidebar = $('sidebar');
    const backdrop = $('sidebarBackdrop');
    sidebar.classList.toggle('show');
    backdrop.classList.toggle('show', sidebar.classList.contains('show'));
  };
  $('sidebarBackdrop').onclick = () => {
    $('sidebar').classList.remove('show');
    $('sidebarBackdrop').classList.remove('show');
  };
  $('startLearningBtn').onclick = () => selectLesson(currentLesson.id || 1);
  $('openSqlBtn').onclick = () => setPlaygroundVisible(true);
  $('togglePlaygroundBtn').onclick = () => setPlaygroundVisible(!playgroundVisible);
  $('collapsePlaygroundBtn').onclick = () => setPlaygroundVisible(false);
  $('floatingPlaygroundBtn').onclick = () => setPlaygroundVisible(true);
  // Mobile Bottom Navigation Click Handlers
  const tabMateri = $('btnTabMateri');
  const tabPlayground = $('btnTabPlayground');
  const tabV4 = $('btnTabV4');
  const tabTools = $('btnTabTools');
  const tabSearch = $('btnTabSearch');

  if (tabMateri) tabMateri.onclick = () => setPlaygroundVisible(false);
  if (tabPlayground) tabPlayground.onclick = () => setPlaygroundVisible(true);
  if (tabV4) tabV4.onclick = () => document.querySelector('.v4-chip[data-v4-open="overview"]')?.click();
  if (tabTools) tabTools.onclick = () => $('toolsBtn')?.click();
  if (tabSearch) tabSearch.onclick = () => $('globalSearchBtn')?.click();
  $('participantBtn').onclick = () => openNameModal(true);
  $('openNameBtn').onclick = () => openNameModal(true);
  $('saveNameBtn').onclick = saveName;
  $('skipNameBtn').onclick = () => $('nameModal').classList.remove('show');
  $('participantNameInput').addEventListener('keydown', (e) => { if (e.key === 'Enter') saveName(); });
  $('dictionaryBtn').onclick = () => { renderDictionary(); $('dictionaryModal').classList.add('show'); };
  $('projectBtn').onclick = () => { renderProjects(); $('projectModal').classList.add('show'); };
  $('certificateBtn').onclick = () => { renderCertificateModal(); $('certificateModal').classList.add('show'); };
  $('printCertificateBtn').onclick = () => { if (isCertificateEligible()) window.print(); };
  $('downloadCertificateBtn').onclick = downloadCertificate;
  $('openProgressBtn').onclick = () => { renderProgressModal(); $('progressModal').classList.add('show'); };
  $('themeBtn').onclick = () => setTheme(document.documentElement.dataset.theme === 'dark' ? 'light' : 'dark');
  $('lessonSearch').oninput = () => renderNav($('lessonSearch').value);
  $('markDoneBtn').onclick = toggleLessonDone;
  $('resetProgressBtn').onclick = () => {
    if (confirm('Reset semua progress, jawaban quiz, nama peserta, dan draft query di perangkat ini?')) {
      ['done', 'doneExercises', 'quizAnswers', 'participantName', 'currentLessonId', 'activeTab', 'sqlDraft', 'certificateId', 'namePromptSkipped'].forEach((k) => store.remove(k));
      currentLesson = data.lessons[0];
      activeTab = 'materi';
      updateParticipantUI();
      updateProgress();
      renderNav();
      renderLesson();
      toast('Progress di perangkat ini sudah direset.');
    }
  };

  function init() {
    applyTheme();
    updateParticipantUI();
    setPlaygroundVisible(playgroundVisible);
    renderStats();
    renderFilters();
    renderNav();
    updateProgress();
    renderLesson();
    renderShortcuts();
    renderCheats();
    const draft = store.get('sqlDraft');
    if (draft) $('sqlEditor').value = draft;
    setupEditorUpgrades();
    runSql();
    if (!getParticipantName() && !store.get('namePromptSkipped', false)) {
      setTimeout(() => openNameModal(true), 450);
      store.set('namePromptSkipped', true);
    }
    if ('serviceWorker' in navigator && location.protocol !== 'file:') {
      navigator.serviceWorker.register('./sw.js').catch(() => {});
    }
  }

  init();
})();
