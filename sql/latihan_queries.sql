-- Modul 1: Orientasi E-Learning dan Cara Belajar SQL
SHOW TABLES;;


-- Modul 2: Pengenalan Database, DBMS, dan SQL
SHOW TABLES;;


-- Modul 3: Model Relasional: Tabel, Baris, Kolom, dan Relasi
DESCRIBE produk;;


-- Modul 4: Data Dictionary dan Pemetaan Tabel toko_pintar
DESCRIBE detail_pesanan;;


-- Modul 5: Tipe Data SQL dan Pemilihan Tipe yang Tepat
DESCRIBE pelanggan;;


-- Modul 6: Konvensi Penamaan dan Kerapian Skema
SHOW TABLES;;


-- Modul 7: DDL Dasar: CREATE TABLE
CREATE TABLE demo_kategori (demo_id INT, nama_demo VARCHAR);;


-- Modul 8: DDL Lanjutan: ALTER, RENAME, dan DROP
DESCRIBE produk;;


-- Modul 9: INSERT Data Tunggal dan Multi-Baris
INSERT INTO kategori (kategori_id, nama_kategori) VALUES (8, 'Digital'); SELECT * FROM kategori ORDER BY kategori_id;;


-- Modul 10: SELECT Dasar dan Pemilihan Kolom
SELECT pelanggan_id, nama, kota, level FROM pelanggan;;


-- Modul 11: Alias Kolom dan Alias Tabel
SELECT nama_produk AS produk, harga AS harga_jual FROM produk LIMIT 5;;


-- Modul 12: WHERE dan Operator Perbandingan
SELECT nama_produk, harga FROM produk WHERE harga > 500000;;


-- Modul 13: AND, OR, dan NOT
SELECT nama_produk, harga, stok FROM produk WHERE harga > 100000 AND stok > 20;;


-- Modul 14: BETWEEN, IN, LIKE, dan NULL
SELECT nama_produk, harga FROM produk WHERE harga BETWEEN 100000 AND 1000000 ORDER BY harga;;


-- Modul 15: ORDER BY, LIMIT, dan OFFSET
SELECT nama_produk, harga FROM produk ORDER BY harga DESC LIMIT 5;;


-- Modul 16: UPDATE Aman dengan WHERE
UPDATE produk SET stok = stok + 5 WHERE produk_id = 2; SELECT produk_id, nama_produk, stok FROM produk WHERE produk_id = 2;;


-- Modul 17: DELETE Aman dan Strategi Soft Delete
DELETE FROM ulasan WHERE ulasan_id = 407; SELECT * FROM ulasan ORDER BY ulasan_id;;


-- Modul 18: Fungsi Agregasi COUNT, SUM, AVG, MIN, MAX
SELECT COUNT(*) AS jumlah_produk, AVG(harga) AS rata_rata_harga, MIN(harga) AS termurah, MAX(harga) AS termahal FROM produk;;


-- Modul 19: GROUP BY untuk Laporan Ringkasan
SELECT status, COUNT(*) AS jumlah_pesanan, SUM(total) AS total_nilai FROM pesanan GROUP BY status ORDER BY jumlah_pesanan DESC;;


-- Modul 20: HAVING untuk Filter Hasil Agregasi
SELECT status, COUNT(*) AS jumlah_pesanan, SUM(total) AS total_nilai FROM pesanan GROUP BY status HAVING SUM(total) > 1000000;;


-- Modul 21: CASE WHEN untuk Kategori Bisnis
SELECT nama_produk, harga, CASE WHEN harga >= 1000000 THEN 'Premium' WHEN harga >= 100000 THEN 'Menengah' ELSE 'Ekonomis' END AS kelas_harga FROM produk ORDER BY harga DESC;;


-- Modul 22: INNER JOIN antar Tabel
SELECT ps.pesanan_id, p.nama, ps.tanggal_pesanan, ps.status, ps.total FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id ORDER BY ps.pesanan_id;;


-- Modul 23: LEFT JOIN dan Data Tanpa Pasangan
SELECT p.pelanggan_id, p.nama, COUNT(ps.pesanan_id) AS total_pesanan FROM pelanggan p LEFT JOIN pesanan ps ON p.pelanggan_id = ps.pelanggan_id GROUP BY p.pelanggan_id, p.nama ORDER BY total_pesanan ASC;;


-- Modul 24: RIGHT, FULL, CROSS, dan SELF JOIN
SELECT p1.nama AS pelanggan_a, p2.nama AS pelanggan_b FROM pelanggan p1 JOIN pelanggan p2 ON p1.kota = p2.kota WHERE p1.pelanggan_id < p2.pelanggan_id;;


-- Modul 25: Multi-Table JOIN untuk Laporan Pesanan
SELECT ps.pesanan_id, p.nama, pr.nama_produk, dp.qty, dp.harga_satuan FROM detail_pesanan dp JOIN pesanan ps ON dp.pesanan_id = ps.pesanan_id JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id JOIN produk pr ON dp.produk_id = pr.produk_id ORDER BY ps.pesanan_id;;


-- Modul 26: Kesalahan Umum JOIN dan Duplikasi Baris
SELECT ps.pesanan_id, COUNT(dp.detail_id) AS jumlah_item FROM pesanan ps JOIN detail_pesanan dp ON ps.pesanan_id = dp.pesanan_id GROUP BY ps.pesanan_id;;


-- Modul 27: Subquery Scalar dan List
SELECT nama_produk, harga FROM produk WHERE harga > (SELECT AVG(harga) FROM produk) ORDER BY harga DESC;;


-- Modul 28: Correlated Subquery
SELECT p.nama, p.kota FROM pelanggan p WHERE p.pelanggan_id IN (SELECT ps.pelanggan_id FROM pesanan ps WHERE ps.status = 'selesai');;


-- Modul 29: EXISTS dan NOT EXISTS
SELECT nama FROM pelanggan WHERE pelanggan_id IN (SELECT pelanggan_id FROM pesanan);;


-- Modul 30: Set Operation: UNION, UNION ALL, INTERSECT, EXCEPT
SELECT kota FROM pelanggan WHERE level = 'Gold' UNION SELECT kota FROM pelanggan WHERE level = 'Silver';;


-- Modul 31: Constraint NOT NULL, UNIQUE, CHECK, DEFAULT
DESCRIBE pelanggan;;


-- Modul 32: Primary Key dan Foreign Key
DESCRIBE pesanan;;


-- Modul 33: Normalisasi 1NF, 2NF, 3NF
SELECT dp.detail_id, ps.pesanan_id, pr.nama_produk, dp.qty FROM detail_pesanan dp JOIN pesanan ps ON dp.pesanan_id = ps.pesanan_id JOIN produk pr ON dp.produk_id = pr.produk_id;;


-- Modul 34: BCNF dan Denormalisasi Terkendali
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id;;


-- Modul 35: Index Single dan Unique
EXPLAIN SELECT * FROM produk WHERE harga > 1000000;;


-- Modul 36: Composite, Covering, Functional, dan Partial Index
EXPLAIN SELECT * FROM pesanan WHERE pelanggan_id = 1 ORDER BY tanggal_pesanan DESC;;


-- Modul 37: EXPLAIN dan Query Plan
EXPLAIN SELECT ps.pesanan_id, p.nama FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id WHERE ps.status = 'selesai';;


-- Modul 38: View untuk Abstraksi Query
SELECT ps.pesanan_id, p.nama, ps.status, ps.total FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id;;


-- Modul 39: Materialized View dan Refresh Data
SELECT status, COUNT(*) AS jumlah, SUM(total) AS total_nilai FROM pesanan GROUP BY status;;


-- Modul 40: Stored Procedure dan Function
SELECT pelanggan_id, SUM(total) AS total_belanja FROM pesanan GROUP BY pelanggan_id;;


-- Modul 41: Trigger dan Audit Log
SELECT * FROM stok_mutasi ORDER BY mutasi_id;;


-- Modul 42: Transaction, COMMIT, ROLLBACK, SAVEPOINT
UPDATE produk SET stok = stok - 1 WHERE produk_id = 1; SELECT produk_id, nama_produk, stok FROM produk WHERE produk_id = 1;;


-- Modul 43: ACID dan Konsistensi Transaksi
SELECT ps.pesanan_id, ps.status, pb.status_bayar FROM pesanan ps JOIN pembayaran pb ON ps.pesanan_id = pb.pesanan_id;;


-- Modul 44: Isolation Level dan Concurrency
SELECT status, COUNT(*) AS jumlah FROM pesanan GROUP BY status;;


-- Modul 45: Window Function: RANK, DENSE_RANK, ROW_NUMBER
SELECT pelanggan_id, total, DENSE_RANK() OVER (ORDER BY total DESC) AS ranking FROM pesanan WHERE status = 'selesai' ORDER BY ranking;;


-- Modul 46: Window Aggregate dan Running Total
SELECT tanggal_pesanan, total, SUM(total) OVER (ORDER BY tanggal_pesanan) AS running_total FROM pesanan WHERE status = 'selesai' ORDER BY tanggal_pesanan;;


-- Modul 47: CTE dengan WITH
WITH omzet AS (SELECT pelanggan_id, SUM(total) AS total_belanja FROM pesanan GROUP BY pelanggan_id) SELECT * FROM omzet ORDER BY total_belanja DESC;;


-- Modul 48: Recursive CTE untuk Hierarki
SELECT kategori_id, nama_kategori FROM kategori ORDER BY kategori_id;;


-- Modul 49: Conditional Aggregation dan Pivot Manual
SELECT status, COUNT(*) AS jumlah FROM pesanan GROUP BY status;;


-- Modul 50: Analitik Dashboard: Omzet, AOV, Produk Laku
SELECT COUNT(*) AS jumlah_order, SUM(total) AS omzet, AVG(total) AS rata_rata_order FROM pesanan WHERE status = 'selesai';;


-- Modul 51: Validasi Data dan Data Quality Check
SELECT status_bayar, COUNT(*) AS jumlah FROM pembayaran GROUP BY status_bayar;;


-- Modul 52: Security: User, Role, Privilege, dan Least Privilege
SELECT nama, level FROM pelanggan ORDER BY level;;


-- Modul 53: SQL Injection dan Prepared Statement
SELECT * FROM pelanggan WHERE email = 'andi@mail.com';;


-- Modul 54: Backup, Restore, dan Point-in-Time Recovery
SELECT COUNT(*) AS total_tabel_produk FROM produk;;


-- Modul 55: Performance Tuning End-to-End
EXPLAIN SELECT ps.pesanan_id, p.nama, ps.total FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id WHERE ps.status = 'selesai' ORDER BY ps.total DESC;;


-- Modul 56: Desain Database Marketplace
SELECT ps.pesanan_id, p.nama, ps.status, ps.total FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id;;


-- Modul 57: Studi Kasus Inventory dan Mutasi Stok
SELECT pr.nama_produk, pr.stok, COALESCE(SUM(sm.qty),0) AS total_mutasi FROM produk pr LEFT JOIN stok_mutasi sm ON pr.produk_id = sm.produk_id GROUP BY pr.nama_produk, pr.stok ORDER BY pr.stok ASC;;


-- Modul 58: Customer Segmentation dengan SQL
SELECT p.pelanggan_id, p.nama, COUNT(ps.pesanan_id) AS frekuensi, SUM(ps.total) AS total_belanja FROM pelanggan p LEFT JOIN pesanan ps ON p.pelanggan_id = ps.pelanggan_id GROUP BY p.pelanggan_id, p.nama ORDER BY total_belanja DESC;;


-- Modul 59: Cohort dan Retention Analysis
SELECT created_at, COUNT(*) AS pelanggan_baru FROM pelanggan GROUP BY created_at ORDER BY created_at;;


-- Modul 60: Rekonsiliasi Pesanan dan Pembayaran
SELECT ps.pesanan_id, ps.total, pb.status_bayar, pb.jumlah_bayar FROM pesanan ps JOIN pembayaran pb ON ps.pesanan_id = pb.pesanan_id ORDER BY ps.pesanan_id;;


-- Modul 61: Data Warehouse dan Star Schema
SELECT k.nama_kategori, SUM(dp.qty * dp.harga_satuan) AS nilai_penjualan FROM detail_pesanan dp JOIN produk pr ON dp.produk_id = pr.produk_id JOIN kategori k ON pr.kategori_id = k.kategori_id GROUP BY k.nama_kategori;;


-- Modul 62: ETL dan ELT Berbasis SQL
SELECT produk_id, nama_produk, harga, stok FROM produk WHERE status_produk = 'aktif';;


-- Modul 63: Big Data SQL: BigQuery, Hive, Spark SQL, ClickHouse
SELECT status, COUNT(*) AS jumlah FROM pesanan GROUP BY status;;


-- Modul 64: Perbedaan Sintaks PostgreSQL, MySQL, SQLite, SQL Server, Oracle
SELECT * FROM produk LIMIT 5;;


-- Modul 65: Integrasi SQL dengan Aplikasi dan API
SELECT pelanggan_id, nama, email FROM pelanggan WHERE pelanggan_id = 1;;


-- Modul 66: Testing Query dan Regression Test
SELECT COUNT(*) AS jumlah_pesanan FROM pesanan;;


-- Modul 67: Deploy E-Learning SQL ke GitHub Pages
SHOW TABLES;;


-- Modul 68: Capstone Project: Dashboard Penjualan toko_pintar
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pesanan ps JOIN pelanggan p ON ps.pelanggan_id = p.pelanggan_id WHERE ps.status <> 'dibatalkan' GROUP BY p.kota ORDER BY omzet DESC;;
