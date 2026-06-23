-- Jawaban Modul 1: Orientasi E-Learning dan Cara Belajar SQL
DESCRIBE pelanggan;;


-- Jawaban Modul 2: Pengenalan Database, DBMS, dan SQL
SELECT * FROM pelanggan LIMIT 5;;


-- Jawaban Modul 3: Model Relasional: Tabel, Baris, Kolom, dan Relasi
DESCRIBE pesanan;;


-- Jawaban Modul 4: Data Dictionary dan Pemetaan Tabel toko_pintar
DESCRIBE pembayaran;;


-- Jawaban Modul 5: Tipe Data SQL dan Pemilihan Tipe yang Tepat
DESCRIBE produk;;


-- Jawaban Modul 6: Konvensi Penamaan dan Kerapian Skema
SELECT produk_id, nama_produk, harga FROM produk LIMIT 5;;


-- Jawaban Modul 7: DDL Dasar: CREATE TABLE
SHOW TABLES;;


-- Jawaban Modul 8: DDL Lanjutan: ALTER, RENAME, dan DROP
CREATE TABLE arsip_produk (produk_id INT, nama_produk VARCHAR);;


-- Jawaban Modul 9: INSERT Data Tunggal dan Multi-Baris
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (99, 'Demo User', 'demo@mail.com', 'Jakarta', 'Bronze', '2026-06-01'); SELECT pelanggan_id, nama, kota FROM pelanggan WHERE pelanggan_id = 99;;


-- Jawaban Modul 10: SELECT Dasar dan Pemilihan Kolom
SELECT nama_produk, harga, stok FROM produk;;


-- Jawaban Modul 11: Alias Kolom dan Alias Tabel
SELECT p.nama, p.kota FROM pelanggan p WHERE p.kota = 'Jakarta';;


-- Jawaban Modul 12: WHERE dan Operator Perbandingan
SELECT nama, kota FROM pelanggan WHERE kota = 'Jakarta';;


-- Jawaban Modul 13: AND, OR, dan NOT
SELECT nama, kota, level FROM pelanggan WHERE kota = 'Jakarta' OR level = 'Gold';;


-- Jawaban Modul 14: BETWEEN, IN, LIKE, dan NULL
SELECT nama, kota FROM pelanggan WHERE kota IN ('Jakarta','Bandung','Denpasar');;


-- Jawaban Modul 15: ORDER BY, LIMIT, dan OFFSET
SELECT nama, created_at FROM pelanggan ORDER BY created_at ASC LIMIT 5;;


-- Jawaban Modul 16: UPDATE Aman dengan WHERE
UPDATE pelanggan SET level = 'Gold' WHERE pelanggan_id = 6; SELECT pelanggan_id, nama, level FROM pelanggan WHERE pelanggan_id = 6;;


-- Jawaban Modul 17: DELETE Aman dan Strategi Soft Delete
SELECT produk_id, nama_produk, status_produk FROM produk WHERE status_produk = 'aktif';;


-- Jawaban Modul 18: Fungsi Agregasi COUNT, SUM, AVG, MIN, MAX
SELECT COUNT(*) AS jumlah_pesanan, SUM(total) AS omzet FROM pesanan WHERE status = 'selesai';;


-- Jawaban Modul 19: GROUP BY untuk Laporan Ringkasan
SELECT level, COUNT(*) AS jumlah_pelanggan FROM pelanggan GROUP BY level;;


-- Jawaban Modul 20: HAVING untuk Filter Hasil Agregasi
SELECT pelanggan_id, COUNT(*) AS total_order FROM pesanan GROUP BY pelanggan_id HAVING COUNT(*) >= 2;;


-- Jawaban Modul 21: CASE WHEN untuk Kategori Bisnis
SELECT nama, level, CASE WHEN level = 'Gold' THEN 'Prioritas' ELSE 'Reguler' END AS segmen_layanan FROM pelanggan;;


-- Jawaban Modul 22: INNER JOIN antar Tabel
SELECT pr.nama_produk, k.nama_kategori, pr.harga FROM produk pr JOIN kategori k ON pr.kategori_id = k.kategori_id;;


-- Jawaban Modul 23: LEFT JOIN dan Data Tanpa Pasangan
SELECT p.nama, ps.pesanan_id FROM pelanggan p LEFT JOIN pesanan ps ON p.pelanggan_id = ps.pelanggan_id WHERE ps.pesanan_id IS NULL;;


-- Jawaban Modul 24: RIGHT, FULL, CROSS, dan SELF JOIN
SELECT pr.nama_produk, k.nama_kategori FROM produk pr JOIN kategori k ON pr.kategori_id = k.kategori_id;;


-- Jawaban Modul 25: Multi-Table JOIN untuk Laporan Pesanan
SELECT ps.pesanan_id, p.nama, pb.status_bayar, ps.total FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id JOIN pembayaran pb ON ps.pesanan_id = pb.pesanan_id;;


-- Jawaban Modul 26: Kesalahan Umum JOIN dan Duplikasi Baris
SELECT produk_id, COUNT(*) AS muncul_di_detail FROM detail_pesanan GROUP BY produk_id;;


-- Jawaban Modul 27: Subquery Scalar dan List
SELECT nama, level FROM pelanggan WHERE pelanggan_id IN (SELECT pelanggan_id FROM pesanan WHERE status = 'selesai');;


-- Jawaban Modul 28: Correlated Subquery
SELECT nama_produk, harga FROM produk WHERE harga > (SELECT AVG(harga) FROM produk);;


-- Jawaban Modul 29: EXISTS dan NOT EXISTS
SELECT nama_produk FROM produk WHERE produk_id IN (SELECT produk_id FROM detail_pesanan);;


-- Jawaban Modul 30: Set Operation: UNION, UNION ALL, INTERSECT, EXCEPT
SELECT kota FROM pelanggan WHERE level = 'Gold' UNION ALL SELECT kota FROM pelanggan WHERE level = 'Silver';;


-- Jawaban Modul 31: Constraint NOT NULL, UNIQUE, CHECK, DEFAULT
DESCRIBE produk;;


-- Jawaban Modul 32: Primary Key dan Foreign Key
DESCRIBE detail_pesanan;;


-- Jawaban Modul 33: Normalisasi 1NF, 2NF, 3NF
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk FROM kategori k LEFT JOIN produk pr ON k.kategori_id = pr.kategori_id GROUP BY k.nama_kategori;;


-- Jawaban Modul 34: BCNF dan Denormalisasi Terkendali
SELECT pelanggan_id, COUNT(*) AS total_order, SUM(total) AS total_belanja FROM pesanan GROUP BY pelanggan_id;;


-- Jawaban Modul 35: Index Single dan Unique
EXPLAIN SELECT * FROM pelanggan WHERE email = 'andi@mail.com';;


-- Jawaban Modul 36: Composite, Covering, Functional, dan Partial Index
EXPLAIN SELECT * FROM detail_pesanan WHERE produk_id = 1;;


-- Jawaban Modul 37: EXPLAIN dan Query Plan
EXPLAIN SELECT * FROM produk ORDER BY harga DESC LIMIT 5;;


-- Jawaban Modul 38: View untuk Abstraksi Query
SELECT pr.nama_produk, k.nama_kategori, pr.harga FROM produk pr JOIN kategori k ON pr.kategori_id = k.kategori_id;;


-- Jawaban Modul 39: Materialized View dan Refresh Data
SELECT pelanggan_id, SUM(total) AS total_belanja FROM pesanan WHERE status <> 'dibatalkan' GROUP BY pelanggan_id;;


-- Jawaban Modul 40: Stored Procedure dan Function
SELECT produk_id, SUM(qty) AS total_terjual FROM detail_pesanan GROUP BY produk_id;;


-- Jawaban Modul 41: Trigger dan Audit Log
SELECT produk_id, nama_produk, stok FROM produk ORDER BY stok ASC LIMIT 5;;


-- Jawaban Modul 42: Transaction, COMMIT, ROLLBACK, SAVEPOINT
UPDATE pembayaran SET status_bayar = 'lunas' WHERE pesanan_id = 103; SELECT * FROM pembayaran WHERE pesanan_id = 103;;


-- Jawaban Modul 43: ACID dan Konsistensi Transaksi
SELECT produk_id, SUM(qty) AS keluar FROM stok_mutasi WHERE jenis = 'keluar' GROUP BY produk_id;;


-- Jawaban Modul 44: Isolation Level dan Concurrency
SELECT produk_id, stok FROM produk WHERE stok < 20 ORDER BY stok;;


-- Jawaban Modul 45: Window Function: RANK, DENSE_RANK, ROW_NUMBER
SELECT produk_id, qty, ROW_NUMBER() OVER (ORDER BY qty DESC) AS nomor FROM detail_pesanan;;


-- Jawaban Modul 46: Window Aggregate dan Running Total
SELECT pesanan_id, total, AVG(total) OVER () AS rata_rata_order FROM pesanan;;


-- Jawaban Modul 47: CTE dengan WITH
WITH produk_laku AS (SELECT produk_id, SUM(qty) AS total_qty FROM detail_pesanan GROUP BY produk_id) SELECT * FROM produk_laku ORDER BY total_qty DESC;;


-- Jawaban Modul 48: Recursive CTE untuk Hierarki
SELECT gudang_id, nama_gudang, kota FROM gudang;;


-- Jawaban Modul 49: Conditional Aggregation dan Pivot Manual
SELECT metode, COUNT(*) AS jumlah FROM pembayaran GROUP BY metode;;


-- Jawaban Modul 50: Analitik Dashboard: Omzet, AOV, Produk Laku
SELECT produk_id, SUM(qty) AS total_terjual FROM detail_pesanan GROUP BY produk_id ORDER BY total_terjual DESC;;


-- Jawaban Modul 51: Validasi Data dan Data Quality Check
SELECT status, COUNT(*) AS jumlah FROM pesanan GROUP BY status;;


-- Jawaban Modul 52: Security: User, Role, Privilege, dan Least Privilege
SELECT metode, status_bayar, jumlah_bayar FROM pembayaran;;


-- Jawaban Modul 53: SQL Injection dan Prepared Statement
SELECT pelanggan_id, nama FROM pelanggan WHERE pelanggan_id = 1;;


-- Jawaban Modul 54: Backup, Restore, dan Point-in-Time Recovery
SELECT COUNT(*) AS total_transaksi FROM pesanan;;


-- Jawaban Modul 55: Performance Tuning End-to-End
EXPLAIN SELECT produk_id, SUM(qty) AS total_qty FROM detail_pesanan GROUP BY produk_id;;


-- Jawaban Modul 56: Desain Database Marketplace
SELECT pr.nama_produk, s.nama_supplier, pr.harga FROM produk pr JOIN supplier s ON pr.supplier_id = s.supplier_id;;


-- Jawaban Modul 57: Studi Kasus Inventory dan Mutasi Stok
SELECT jenis, SUM(qty) AS total_qty FROM stok_mutasi GROUP BY jenis;;


-- Jawaban Modul 58: Customer Segmentation dengan SQL
SELECT kota, COUNT(*) AS jumlah_pelanggan FROM pelanggan GROUP BY kota;;


-- Jawaban Modul 59: Cohort dan Retention Analysis
SELECT pelanggan_id, COUNT(*) AS total_order FROM pesanan GROUP BY pelanggan_id;;


-- Jawaban Modul 60: Rekonsiliasi Pesanan dan Pembayaran
SELECT status_bayar, SUM(jumlah_bayar) AS total_bayar FROM pembayaran GROUP BY status_bayar;;


-- Jawaban Modul 61: Data Warehouse dan Star Schema
SELECT p.kota, SUM(ps.total) AS total_belanja FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id GROUP BY p.kota;;


-- Jawaban Modul 62: ETL dan ELT Berbasis SQL
SELECT pesanan_id, tanggal_pesanan, total FROM pesanan WHERE status <> 'dibatalkan';;


-- Jawaban Modul 63: Big Data SQL: BigQuery, Hive, Spark SQL, ClickHouse
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id;;


-- Jawaban Modul 64: Perbedaan Sintaks PostgreSQL, MySQL, SQLite, SQL Server, Oracle
SELECT * FROM pelanggan LIMIT 5;;


-- Jawaban Modul 65: Integrasi SQL dengan Aplikasi dan API
SELECT pesanan_id, status, total FROM pesanan WHERE pelanggan_id = 1;;


-- Jawaban Modul 66: Testing Query dan Regression Test
SELECT COUNT(*) AS jumlah_detail FROM detail_pesanan;;


-- Jawaban Modul 67: Deploy E-Learning SQL ke GitHub Pages
SELECT COUNT(*) AS total_modul FROM kategori;;


-- Jawaban Modul 68: Capstone Project: Dashboard Penjualan toko_pintar
SELECT pr.nama_produk, SUM(dp.qty) AS total_terjual FROM detail_pesanan dp JOIN produk pr ON dp.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY total_terjual DESC;;
