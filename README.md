<div align="center">

# 🎓 SQL Dari Dasar Hingga Master

### E-Learning Interaktif v4.0 FULL

**Platform belajar SQL interaktif berbasis browser — tanpa backend, siap deploy ke GitHub Pages.**

**🌐 Live Demo:** [wawanwfs.github.io/SQL-E-Learning-Interaktif](https://wawanwfs.github.io/SQL-E-Learning-Interaktif)

![Static Badge](https://img.shields.io/badge/Modul-140-36d3ff?style=for-the-badge)
![Static Badge](https://img.shields.io/badge/Latihan-1120-66f0c8?style=for-the-badge)
![Static Badge](https://img.shields.io/badge/Quiz-560-ffd166?style=for-the-badge)
![Static Badge](https://img.shields.io/badge/PWA-Offline_Ready-31d48c?style=for-the-badge)

</div>

---

## 📖 Tentang

Platform e-learning SQL lengkap yang berjalan sepenuhnya di browser. Dibangun dengan HTML, CSS, dan JavaScript murni — tanpa framework, tanpa backend, tanpa database server. Semua data tersimpan di `localStorage` browser.

**Database latihan:** `toko_pintar` — sebuah database simulasi toko retail dengan tabel pelanggan, produk, pesanan, detail pesanan, kategori, dan stok gudang.

## ✨ Fitur Utama

| Fitur                        | Deskripsi                                                         |
| ---------------------------- | ----------------------------------------------------------------- |
| 📚**140 Modul**        | Dari SELECT dasar sampai Window Function, CTE, Subquery, Optimasi |
| 🧪**1.120 Latihan**    | Latihan bertingkat per modul (Dasar → Master)                    |
| ❓**560 Quiz**         | Soal pilihan ganda interaktif dengan feedback langsung            |
| ⚡**SQL Playground**   | Editor SQL di browser dengan engine`MiniSQL` custom             |
| 🏆**Sertifikat**       | Sertifikat kelulusan otomatis (cetak/download PDF/HTML)           |
| 📱**PWA**              | Bisa di-install sebagai app, mendukung offline                    |
| 🌙**Dark/Light Mode**  | Tema gelap dan terang dengan toggle                               |
| 🔖**Bookmark**         | Tandai modul favorit                                              |
| 📝**Catatan**          | Catatan pribadi per modul                                         |
| 🔍**Global Search**    | Cari konten di seluruh materi                                     |
| 🏅**Badge & Streak**   | Gamifikasi progres belajar                                        |
| 📊**Exam & Flashcard** | Bank soal ujian, flashcards, casebook                             |
| 📋**Study Planner**    | Rencana belajar terjadwal                                         |
| 💾**Export/Import**    | Backup dan restore progress                                       |

## 🚀 Quick Start

### Cara 1: Buka Langsung

```Python
Klik dua kali file index.html di browser.
```

### Cara 2: Local Server (Direkomendasikan)

```bash
# Python
python -m http.server 8000

# Node.js
npx serve .

# PHP
php -S localhost:8000
```

Buka `http://localhost:8000` di browser.

### Cara 3: Deploy ke GitHub Pages

1. Buat repository baru di GitHub
2. Upload seluruh isi folder proyek ke branch `main`
3. Pastikan `index.html` berada di **root** repository
4. Buka **Settings** → **Pages**
5. Pilih source: branch `main`, folder `/ (root)`
6. Simpan — URL GitHub Pages akan aktif dalam beberapa menit

> **💡 Tip:** File `.nojekyll` sudah disertakan agar GitHub Pages tidak memproses file dengan Jekyll.

## 📂 Struktur Folder

```
📁 SQL-E-Learning-Interaktif/
│
├── 📄 index.html              # Halaman utama aplikasi
├── 📄 404.html                 # Halaman error 404
├── 📄 sw.js                    # Service Worker (PWA offline)
├── 📄 .nojekyll                # Bypass Jekyll di GitHub Pages
├── 📄 .gitignore               # Git ignore rules
│
├── 📁 assets/
│   ├── 📁 css/
│   │   └── style.css           # Design system lengkap (~2500 baris)
│   ├── 📁 js/
│   │   ├── data.js             # Data 140 modul, latihan, quiz (~1.4MB)
│   │   ├── minisql.js          # Engine SQL custom berbasis JS
│   │   ├── app.js              # Logika utama aplikasi
│   │   ├── addons.js           # Fitur tambahan v3 (bookmark, notes, dll)
│   │   └── v4_enhancements.js  # Fitur v4 (exam, flashcard, planner)
│   ├── 📁 img/
│   │   ├── erd_toko_pintar.svg # Diagram ERD database
│   │   ├── query_flow.svg      # Diagram alur query
│   │   ├── icon-192.svg        # PWA icon 192px
│   │   └── icon-512.svg        # PWA icon 512px
│   └── manifest.json           # PWA manifest
│
├── 📁 data/                    # Bank data JSON
│   ├── v4_exam_bank.json       # Bank soal ujian
│   ├── v4_flashcards.json      # Flashcards
│   ├── v4_casebook.json        # Studi kasus lanjutan
│   ├── v4_competency_map.json  # Peta kompetensi
│   ├── v4_study_plans.json     # Rencana belajar
│   ├── v4_pretest_posttest.json # Pre/post test
│   ├── challenge_bank.json     # Bank tantangan
│   ├── query_templates.json    # Template query SQL
│   └── ...                     # File data lainnya
│
├── 📁 sql/                     # File SQL referensi
│   ├── database_toko_pintar.sql # Schema + data lengkap
│   ├── query_bank_500_v4.sql   # 500 query referensi
│   ├── praktikum_full.sql      # Materi praktikum
│   ├── kunci_jawaban_latihan.sql # Kunci jawaban
│   └── ...                     # File SQL lainnya
│
├── 📁 datasets/supporting/     # Dataset pendukung (CSV)
│   ├── daily_sales_2026.csv
│   ├── pelanggan_synthetic_3000.csv
│   ├── produk_catalog_2000.csv
│   └── warehouse_stock_snapshot.csv
│
├── 📁 docs/                    # Dokumentasi
│   ├── CURRICULUM.md           # Kurikulum lengkap
│   ├── PANDUAN_PENGGUNA_v4.md  # Panduan pengguna
│   ├── PANDUAN_DOSEN_v4.md     # Panduan instruktur
│   ├── RUBRIK_PENILAIAN.md     # Rubrik penilaian
│   └── ...                     # Dokumen lainnya
│
└── 📁 projects/                # Brief proyek akhir
    ├── capstone_project.md
    └── project_bank_20.md
```

## 🎯 Level Materi

| Level              | Topik Utama                                                | Jumlah Modul |
| ------------------ | ---------------------------------------------------------- | ------------ |
| **Dasar**    | SELECT, WHERE, ORDER BY, LIMIT, alias, tipe data           | ~30          |
| **Menengah** | JOIN, GROUP BY, HAVING, aggregate, subquery                | ~30          |
| **Lanjutan** | CTE, Window Function, CASE, set operations                 | ~30          |
| **Advanced** | Index, query plan, optimization, transactions              | ~25          |
| **Master**   | Stored procedure, trigger, partitioning, advanced patterns | ~25          |

## 🏆 Syarat Sertifikat

Sertifikat kelulusan akan aktif setelah **4 syarat** terpenuhi:

1. ✅ Nama peserta sudah diisi
2. ✅ Seluruh 140 modul ditandai selesai
3. ✅ Seluruh latihan ditandai selesai
4. ✅ Seluruh quiz sudah dijawab

Sertifikat dapat:

- 🖨️ Dicetak langsung dari browser
- 📄 Disimpan sebagai PDF via fitur print
- 📥 Diunduh sebagai file HTML

## ⚡ SQL Playground

Playground menggunakan `MiniSQL` — engine SQL custom berbasis JavaScript yang mendukung:

```sql
-- Query yang didukung:
SELECT, SELECT DISTINCT, WHERE, AND, OR, NOT
ORDER BY, LIMIT, OFFSET, AS (alias)
JOIN (INNER, LEFT, RIGHT, FULL, CROSS)
GROUP BY, HAVING, COUNT, SUM, AVG, MIN, MAX
INSERT INTO, UPDATE, DELETE FROM
CREATE TABLE, DROP TABLE, ALTER TABLE
UNION, UNION ALL, INTERSECT, EXCEPT
Subquery, CASE WHEN, LIKE, IN, BETWEEN
```

> ⚠️ **Catatan:** MiniSQL adalah simulasi di browser. Tidak mendukung 100% standar SQL. Untuk latihan dengan database sungguhan, gunakan file `sql/database_toko_pintar.sql` di MySQL/PostgreSQL/SQLite.

## 📱 PWA (Progressive Web App)

Aplikasi ini mendukung PWA:

- **Installable** — Bisa di-install sebagai app di desktop/mobile
- **Offline** — Semua materi tersedia tanpa internet setelah kunjungan pertama
- **Cache** — Aset inti di-cache otomatis oleh Service Worker

Untuk menginstall:

1. Buka di Chrome/Edge
2. Klik ikon install di address bar (atau menu → "Install App")
3. Aplikasi akan terbuka sebagai standalone window

## 💾 Penyimpanan Data

Seluruh data pengguna disimpan di **localStorage** browser:

| Data              | Keterangan                    |
| ----------------- | ----------------------------- |
| Nama peserta      | Untuk sertifikat              |
| Tema (dark/light) | Preferensi tampilan           |
| Modul terakhir    | Resume dari posisi terakhir   |
| Progress sesi     | Modul yang sudah selesai      |
| Progress latihan  | Latihan yang sudah dikerjakan |
| Jawaban quiz      | Jawaban yang sudah dipilih    |
| Draft query       | Query terakhir di playground  |
| Bookmark          | Modul yang ditandai           |
| Catatan           | Catatan pribadi per modul     |
| Badge & streak    | Data gamifikasi               |

> ⚠️ Data tersimpan **hanya di browser** dan perangkat yang digunakan. Gunakan fitur **Export** untuk backup.

## 🛠️ Teknologi

- **HTML5** — Struktur semantik
- **CSS3** — Design system dengan CSS Variables, glassmorphism, animasi
- **JavaScript ES6+** — Vanilla JS, tanpa framework
- **Google Fonts** — Inter, JetBrains Mono
- **Service Worker** — PWA offline caching
- **localStorage** — Persistensi data client-side

## 📝 Changelog

### v4.0 FULL (Latest)

- 140 modul lengkap (dari 100)
- 1120 latihan (dari 600)
- 560 quiz (dari 300)
- Bank soal ujian, flashcards, casebook
- Peta kompetensi & study planner
- Command palette (Ctrl+K)
- Reading ruler, compact mode, readable mode
- Pre-test & post-test
- Data Lab & export fitur
- PWA dengan offline support penuh
- UI/UX redesign dengan glassmorphism & micro-animations

### v3.0

- Bookmark, catatan per modul
- Global search, drill acak
- Badge, streak, riwayat SQL
- Template query, pusat materi
- Enhanced toolbar

### v2.0

- SQL Playground dengan MiniSQL engine
- Dark/Light mode
- Sertifikat kelulusan
- Data dictionary

## 👤 Pembuat

**Wahyu Fajar Setiawan**

## 📄 Lisensi

Proyek ini dibuat untuk keperluan edukasi. Silakan digunakan, dimodifikasi, dan didistribusikan untuk tujuan pembelajaran.
