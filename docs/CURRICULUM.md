# Kurikulum Modul

01. **Orientasi E-Learning dan Cara Belajar SQL** — Dasar — Memahami alur belajar, database toko_pintar, dan cara membaca output query.
02. **Pengenalan Database, DBMS, dan SQL** — Dasar — Mengenal peran database, DBMS, tabel, query, dan hasil eksekusi.
03. **Model Relasional: Tabel, Baris, Kolom, dan Relasi** — Dasar — Membedakan entitas, atribut, baris, primary key, dan foreign key.
04. **Data Dictionary dan Pemetaan Tabel toko_pintar** — Dasar — Membaca kamus data sebagai dasar menulis query yang benar.
05. **Tipe Data SQL dan Pemilihan Tipe yang Tepat** — Dasar — Memahami integer, decimal, varchar, date, boolean, dan implikasi pemilihannya.
06. **Konvensi Penamaan dan Kerapian Skema** — Dasar — Menyusun nama tabel dan kolom agar konsisten, mudah dibaca, dan tidak ambigu.
07. **DDL Dasar: CREATE TABLE** — Dasar — Mengenal cara membuat tabel, kolom, dan struktur awal database.
08. **DDL Lanjutan: ALTER, RENAME, dan DROP** — Dasar — Memahami perubahan struktur dan risiko penghapusan objek database.
09. **INSERT Data Tunggal dan Multi-Baris** — Dasar — Menambahkan data baru dengan urutan kolom yang jelas.
10. **SELECT Dasar dan Pemilihan Kolom** — Dasar — Menampilkan seluruh kolom atau kolom tertentu sesuai kebutuhan informasi.
11. **Alias Kolom dan Alias Tabel** — Dasar — Menyederhanakan nama kolom/tabel pada output dan JOIN.
12. **WHERE dan Operator Perbandingan** — Dasar — Menyaring data dengan =, <>, >, <, >=, dan <=.
13. **AND, OR, dan NOT** — Dasar — Menggabungkan beberapa kondisi secara logis.
14. **BETWEEN, IN, LIKE, dan NULL** — Dasar — Menggunakan filter rentang, daftar nilai, pola teks, dan nilai kosong.
15. **ORDER BY, LIMIT, dan OFFSET** — Dasar — Mengurutkan dan membatasi hasil untuk laporan maupun pagination.
16. **UPDATE Aman dengan WHERE** — Dasar — Mengubah data tanpa merusak seluruh tabel.
17. **DELETE Aman dan Strategi Soft Delete** — Dasar — Menghapus data, memahami risiko, dan mengenal alternatif soft delete.
18. **Fungsi Agregasi COUNT, SUM, AVG, MIN, MAX** — Menengah — Meringkas data transaksi menjadi informasi statistik.
19. **GROUP BY untuk Laporan Ringkasan** — Menengah — Mengelompokkan data berdasarkan kategori, status, kota, atau level.
20. **HAVING untuk Filter Hasil Agregasi** — Menengah — Menyaring kelompok setelah agregasi dilakukan.
21. **CASE WHEN untuk Kategori Bisnis** — Menengah — Membuat klasifikasi berdasarkan kondisi harga, stok, atau nilai belanja.
22. **INNER JOIN antar Tabel** — Menengah — Menggabungkan data yang memiliki pasangan pada tabel terkait.
23. **LEFT JOIN dan Data Tanpa Pasangan** — Menengah — Mencari pelanggan tanpa pesanan, produk tanpa ulasan, atau kategori tanpa produk.
24. **RIGHT, FULL, CROSS, dan SELF JOIN** — Menengah — Memahami variasi JOIN dan kapan digunakan pada masalah tertentu.
25. **Multi-Table JOIN untuk Laporan Pesanan** — Menengah — Menggabungkan pelanggan, pesanan, detail, produk, dan pembayaran.
26. **Kesalahan Umum JOIN dan Duplikasi Baris** — Menengah — Mendiagnosis hasil JOIN yang berlipat atau tidak sesuai.
27. **Subquery Scalar dan List** — Menengah — Memakai query di dalam query untuk pembanding dan daftar nilai.
28. **Correlated Subquery** — Menengah — Memahami subquery yang bergantung pada baris query luar.
29. **EXISTS dan NOT EXISTS** — Menengah — Menguji keberadaan data terkait secara efisien.
30. **Set Operation: UNION, UNION ALL, INTERSECT, EXCEPT** — Menengah — Menggabungkan hasil query dengan struktur kolom yang sama.
31. **Constraint NOT NULL, UNIQUE, CHECK, DEFAULT** — Lanjutan — Menjaga validitas data sejak level struktur tabel.
32. **Primary Key dan Foreign Key** — Lanjutan — Menjaga identitas baris dan hubungan antartabel.
33. **Normalisasi 1NF, 2NF, 3NF** — Lanjutan — Mengurangi duplikasi, anomali insert/update/delete, dan struktur yang tidak konsisten.
34. **BCNF dan Denormalisasi Terkendali** — Lanjutan — Menimbang ketepatan model dengan kebutuhan performa laporan.
35. **Index Single dan Unique** — Lanjutan — Mempercepat pencarian pada kolom yang sering dipakai untuk filter.
36. **Composite, Covering, Functional, dan Partial Index** — Lanjutan — Mendesain index berdasarkan pola query aktual.
37. **EXPLAIN dan Query Plan** — Lanjutan — Membaca rencana eksekusi untuk mendiagnosis query lambat.
38. **View untuk Abstraksi Query** — Lanjutan — Menyimpan query sebagai objek logis untuk menyederhanakan laporan.
39. **Materialized View dan Refresh Data** — Lanjutan — Memahami hasil query yang disimpan secara fisik untuk laporan berat.
40. **Stored Procedure dan Function** — Lanjutan — Mengenal logika database yang dapat dipanggil ulang.
41. **Trigger dan Audit Log** — Lanjutan — Menjalankan aksi otomatis akibat INSERT, UPDATE, atau DELETE.
42. **Transaction, COMMIT, ROLLBACK, SAVEPOINT** — Lanjutan — Menjaga perubahan data agar utuh dan dapat dibatalkan.
43. **ACID dan Konsistensi Transaksi** — Advanced — Memahami atomicity, consistency, isolation, durability pada kasus pesanan.
44. **Isolation Level dan Concurrency** — Advanced — Mengenal risiko dirty read, non-repeatable read, phantom read, dan locking.
45. **Window Function: RANK, DENSE_RANK, ROW_NUMBER** — Advanced — Membuat ranking tanpa menghilangkan baris detail.
46. **Window Aggregate dan Running Total** — Advanced — Menghitung total berjalan, rata-rata bergerak, dan kontribusi kumulatif.
47. **CTE dengan WITH** — Advanced — Memecah query kompleks menjadi bagian bernama yang lebih mudah dibaca.
48. **Recursive CTE untuk Hierarki** — Advanced — Memodelkan struktur bertingkat seperti kategori, organisasi, atau wilayah.
49. **Conditional Aggregation dan Pivot Manual** — Advanced — Mengubah baris menjadi kolom ringkasan berbasis kondisi.
50. **Analitik Dashboard: Omzet, AOV, Produk Laku** — Advanced — Menyusun query KPI operasional toko.
51. **Validasi Data dan Data Quality Check** — Advanced — Mencari data NULL, duplikasi, nilai janggal, dan ketidaksesuaian antar tabel.
52. **Security: User, Role, Privilege, dan Least Privilege** — Advanced — Mendesain hak akses sesuai kebutuhan kerja pengguna.
53. **SQL Injection dan Prepared Statement** — Advanced — Mencegah input pengguna merusak query atau mencuri data.
54. **Backup, Restore, dan Point-in-Time Recovery** — Advanced — Merancang perlindungan data terhadap kesalahan dan kegagalan sistem.
55. **Performance Tuning End-to-End** — Master — Mengoptimalkan query, index, struktur data, dan pola akses aplikasi.
56. **Desain Database Marketplace** — Master — Menerjemahkan kebutuhan bisnis marketplace ke model data.
57. **Studi Kasus Inventory dan Mutasi Stok** — Master — Menganalisis stok masuk, stok keluar, dan risiko stok negatif.
58. **Customer Segmentation dengan SQL** — Master — Mengelompokkan pelanggan berdasarkan frekuensi, nilai belanja, dan status.
59. **Cohort dan Retention Analysis** — Master — Menganalisis perilaku pelanggan berdasarkan periode awal bergabung.
60. **Rekonsiliasi Pesanan dan Pembayaran** — Master — Mencocokkan nilai pesanan dengan status serta jumlah pembayaran.
61. **Data Warehouse dan Star Schema** — Master — Mengenal fact table, dimension table, dan query analitik.
62. **ETL dan ELT Berbasis SQL** — Master — Memindahkan, membersihkan, dan mengubah data untuk analitik.
63. **Big Data SQL: BigQuery, Hive, Spark SQL, ClickHouse** — Master — Mengenal pola SQL untuk data besar dan engine analitik kolumnar.
64. **Perbedaan Sintaks PostgreSQL, MySQL, SQLite, SQL Server, Oracle** — Master — Mengenali standar SQL dan variasi fitur antar DBMS.
65. **Integrasi SQL dengan Aplikasi dan API** — Master — Mendesain query aman dari aplikasi web, mobile, dan layanan backend.
66. **Testing Query dan Regression Test** — Master — Menjamin perubahan query tidak merusak hasil laporan.
67. **Deploy E-Learning SQL ke GitHub Pages** — Master — Menyiapkan repository statis, struktur file, dan publikasi halaman.
68. **Capstone Project: Dashboard Penjualan toko_pintar** — Master — Menyusun proyek akhir berbasis 10 query analitik dan laporan eksekutif.