-- Database toko_pintar untuk SQL E-Learning Interaktif v2

-- Jalankan pada SQLite/MySQL/PostgreSQL dengan penyesuaian tipe data seperlunya.

DROP TABLE IF EXISTS pelanggan;
DROP TABLE IF EXISTS kategori;
DROP TABLE IF EXISTS supplier;
DROP TABLE IF EXISTS produk;
DROP TABLE IF EXISTS pesanan;
DROP TABLE IF EXISTS detail_pesanan;
DROP TABLE IF EXISTS pembayaran;
DROP TABLE IF EXISTS pengiriman;
DROP TABLE IF EXISTS ulasan;
DROP TABLE IF EXISTS gudang;
DROP TABLE IF EXISTS stok_mutasi;
CREATE TABLE pelanggan (
  pelanggan_id INTEGER PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  email VARCHAR(120) UNIQUE,
  kota VARCHAR(80),
  level VARCHAR(20),
  created_at DATE

);

CREATE TABLE kategori (
  kategori_id INTEGER PRIMARY KEY,
  nama_kategori VARCHAR(100) NOT NULL

);

CREATE TABLE supplier (
  supplier_id INTEGER PRIMARY KEY,
  nama_supplier VARCHAR(120) NOT NULL,
  kota VARCHAR(80),
  rating INTEGER

);

CREATE TABLE produk (
  produk_id INTEGER PRIMARY KEY,
  kategori_id INTEGER,
  supplier_id INTEGER,
  nama_produk VARCHAR(150) NOT NULL,
  harga INTEGER,
  stok INTEGER,
  status_produk VARCHAR(20)

);

CREATE TABLE pesanan (
  pesanan_id INTEGER PRIMARY KEY,
  pelanggan_id INTEGER,
  tanggal_pesanan DATE,
  status VARCHAR(30),
  total INTEGER

);

CREATE TABLE detail_pesanan (
  detail_id INTEGER PRIMARY KEY,
  pesanan_id INTEGER,
  produk_id INTEGER,
  qty INTEGER,
  harga_satuan INTEGER

);

CREATE TABLE pembayaran (
  pembayaran_id INTEGER PRIMARY KEY,
  pesanan_id INTEGER,
  metode VARCHAR(50),
  status_bayar VARCHAR(30),
  jumlah_bayar INTEGER,
  tanggal_bayar DATE

);

CREATE TABLE pengiriman (
  pengiriman_id INTEGER PRIMARY KEY,
  pesanan_id INTEGER,
  kurir VARCHAR(50),
  resi VARCHAR(50),
  status_kirim VARCHAR(30)

);

CREATE TABLE ulasan (
  ulasan_id INTEGER PRIMARY KEY,
  pelanggan_id INTEGER,
  produk_id INTEGER,
  rating INTEGER,
  komentar TEXT

);

CREATE TABLE gudang (
  gudang_id INTEGER PRIMARY KEY,
  nama_gudang VARCHAR(100),
  kota VARCHAR(80)

);

CREATE TABLE stok_mutasi (
  mutasi_id INTEGER PRIMARY KEY,
  produk_id INTEGER,
  gudang_id INTEGER,
  tanggal DATE,
  jenis VARCHAR(20),
  qty INTEGER,
  keterangan VARCHAR(150)

);

INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (1, 'Andi Saputra', 'andi@mail.com', 'Jakarta', 'Gold', '2026-01-05');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (2, 'Budi Santoso', 'budi@mail.com', 'Bandung', 'Silver', '2026-01-12');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (3, 'Citra Lestari', 'citra@mail.com', 'Surabaya', 'Gold', '2026-02-02');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (4, 'Dewi Anggraini', 'dewi@mail.com', 'Yogyakarta', 'Bronze', '2026-02-15');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (5, 'Eko Prasetyo', 'eko@mail.com', 'Semarang', 'Silver', '2026-03-01');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (6, 'Fajar Hidayat', 'fajar@mail.com', 'Jakarta', 'Bronze', '2026-03-10');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (7, 'Gita Maharani', 'gita@mail.com', 'Denpasar', 'Gold', '2026-03-21');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (8, 'Hendra Wijaya', 'hendra@mail.com', 'Makassar', 'Silver', '2026-04-03');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (9, 'Intan Permata', 'intan@mail.com', 'Medan', 'Gold', '2026-04-11');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (10, 'Joko Prabowo', 'joko@mail.com', 'Palembang', 'Bronze', '2026-04-19');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (11, 'Kirana Ayu', 'kirana@mail.com', 'Malang', 'Silver', '2026-04-22');
INSERT INTO pelanggan (pelanggan_id, nama, email, kota, level, created_at) VALUES (12, 'Lukman Hakim', 'lukman@mail.com', 'Balikpapan', 'Gold', '2026-05-02');

INSERT INTO kategori (kategori_id, nama_kategori) VALUES (1, 'Elektronik');
INSERT INTO kategori (kategori_id, nama_kategori) VALUES (2, 'Buku');
INSERT INTO kategori (kategori_id, nama_kategori) VALUES (3, 'Fashion');
INSERT INTO kategori (kategori_id, nama_kategori) VALUES (4, 'Rumah Tangga');
INSERT INTO kategori (kategori_id, nama_kategori) VALUES (5, 'Makanan');
INSERT INTO kategori (kategori_id, nama_kategori) VALUES (6, 'Kesehatan');
INSERT INTO kategori (kategori_id, nama_kategori) VALUES (7, 'Olahraga');

INSERT INTO supplier (supplier_id, nama_supplier, kota, rating) VALUES (1, 'PT Sumber Digital', 'Jakarta', 5);
INSERT INTO supplier (supplier_id, nama_supplier, kota, rating) VALUES (2, 'CV Buku Nusantara', 'Bandung', 4);
INSERT INTO supplier (supplier_id, nama_supplier, kota, rating) VALUES (3, 'PT Textile Maju', 'Solo', 4);
INSERT INTO supplier (supplier_id, nama_supplier, kota, rating) VALUES (4, 'UD Dapur Sejahtera', 'Semarang', 3);
INSERT INTO supplier (supplier_id, nama_supplier, kota, rating) VALUES (5, 'PT Pangan Sentosa', 'Surabaya', 5);

INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (1, 1, 1, 'Laptop Ultralight', 14500000, 8, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (2, 1, 1, 'Mouse Wireless', 125000, 58, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (3, 1, 1, 'Keyboard Mechanical', 750000, 24, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (4, 3, 3, 'Kaos Basic', 85000, 80, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (5, 2, 2, 'Buku SQL Master', 95000, 41, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (6, 4, 4, 'Blender 2 Liter', 450000, 16, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (7, 5, 5, 'Kopi Arabika 250g', 78000, 70, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (8, 5, 5, 'Cokelat Premium', 65000, 95, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (9, 1, 1, 'Monitor 24 Inch', 1850000, 12, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (10, 3, 3, 'Jaket Hoodie', 220000, 35, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (11, 6, 4, 'Vitamin C 100 Tablet', 120000, 60, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (12, 7, 3, 'Matras Yoga', 180000, 27, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (13, 4, 4, 'Air Fryer Mini', 890000, 9, 'aktif');
INSERT INTO produk (produk_id, kategori_id, supplier_id, nama_produk, harga, stok, status_produk) VALUES (14, 2, 2, 'Buku Data Analytics', 135000, 30, 'aktif');

INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (101, 1, '2026-04-01', 'selesai', 14500000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (102, 2, '2026-04-03', 'selesai', 220000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (103, 3, '2026-04-07', 'diproses', 1928000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (104, 4, '2026-04-10', 'selesai', 125000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (105, 5, '2026-04-11', 'dibatalkan', 450000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (106, 6, '2026-04-12', 'selesai', 3410000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (107, 7, '2026-04-16', 'dikirim', 385000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (108, 8, '2026-04-18', 'selesai', 95000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (109, 2, '2026-04-20', 'pending', 380000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (110, 1, '2026-04-22', 'selesai', 14500000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (111, 9, '2026-04-24', 'selesai', 1235000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (112, 10, '2026-04-25', 'pending', 78000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (113, 11, '2026-04-28', 'selesai', 270000);
INSERT INTO pesanan (pesanan_id, pelanggan_id, tanggal_pesanan, status, total) VALUES (114, 12, '2026-05-02', 'dikirim', 1750000);

INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1001, 101, 1, 1, 14500000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1002, 102, 10, 1, 220000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1003, 103, 9, 1, 1850000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1004, 103, 7, 1, 78000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1005, 104, 2, 1, 125000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1006, 105, 6, 1, 450000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1007, 106, 3, 2, 750000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1008, 106, 9, 1, 1850000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1009, 106, 8, 1, 65000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1010, 107, 4, 2, 85000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1011, 107, 10, 1, 220000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1012, 108, 5, 1, 95000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1013, 109, 5, 4, 95000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1014, 110, 1, 1, 14500000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1015, 111, 13, 1, 890000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1016, 111, 11, 2, 120000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1017, 111, 7, 1, 78000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1018, 112, 7, 1, 78000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1019, 113, 14, 2, 135000);
INSERT INTO detail_pesanan (detail_id, pesanan_id, produk_id, qty, harga_satuan) VALUES (1020, 114, 9, 1, 1850000);

INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (201, 101, 'Transfer Bank', 'lunas', 14500000, '2026-04-01');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (202, 102, 'COD', 'lunas', 220000, '2026-04-05');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (203, 103, 'Kartu Kredit', 'pending', 0, NULL);
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (204, 104, 'E-Wallet', 'lunas', 125000, '2026-04-10');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (205, 105, 'Transfer Bank', 'refund', 0, '2026-04-11');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (206, 106, 'Kartu Kredit', 'lunas', 3410000, '2026-04-12');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (207, 107, 'COD', 'pending', 0, NULL);
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (208, 108, 'E-Wallet', 'lunas', 95000, '2026-04-18');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (209, 109, 'Transfer Bank', 'pending', 0, NULL);
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (210, 110, 'Transfer Bank', 'lunas', 14500000, '2026-04-22');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (211, 111, 'E-Wallet', 'lunas', 1235000, '2026-04-24');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (212, 112, 'COD', 'pending', 0, NULL);
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (213, 113, 'Transfer Bank', 'lunas', 270000, '2026-04-28');
INSERT INTO pembayaran (pembayaran_id, pesanan_id, metode, status_bayar, jumlah_bayar, tanggal_bayar) VALUES (214, 114, 'Kartu Kredit', 'pending', 0, NULL);

INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (301, 101, 'JNE', 'JNE101', 'diterima');
INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (302, 102, 'SiCepat', 'SC102', 'diterima');
INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (303, 103, 'JNT', 'JNT103', 'diproses');
INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (304, 104, 'Anteraja', 'AA104', 'diterima');
INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (305, 106, 'JNE', 'JNE106', 'diterima');
INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (306, 107, 'SiCepat', 'SC107', 'dikirim');
INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (307, 108, 'JNT', 'JNT108', 'diterima');
INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (308, 111, 'JNE', 'JNE111', 'diterima');
INSERT INTO pengiriman (pengiriman_id, pesanan_id, kurir, resi, status_kirim) VALUES (309, 114, 'JNT', 'JNT114', 'dikirim');

INSERT INTO ulasan (ulasan_id, pelanggan_id, produk_id, rating, komentar) VALUES (401, 1, 1, 5, 'Laptop cepat dan ringan');
INSERT INTO ulasan (ulasan_id, pelanggan_id, produk_id, rating, komentar) VALUES (402, 2, 5, 5, 'Materi SQL sangat mudah');
INSERT INTO ulasan (ulasan_id, pelanggan_id, produk_id, rating, komentar) VALUES (403, 7, 9, 4, 'Monitor bagus');
INSERT INTO ulasan (ulasan_id, pelanggan_id, produk_id, rating, komentar) VALUES (404, 6, 4, 4, 'Kaos nyaman');
INSERT INTO ulasan (ulasan_id, pelanggan_id, produk_id, rating, komentar) VALUES (405, 3, 1, 5, 'Produk premium');
INSERT INTO ulasan (ulasan_id, pelanggan_id, produk_id, rating, komentar) VALUES (406, 9, 13, 4, 'Praktis untuk dapur kecil');
INSERT INTO ulasan (ulasan_id, pelanggan_id, produk_id, rating, komentar) VALUES (407, 11, 14, 5, 'Buku analitik lengkap');

INSERT INTO gudang (gudang_id, nama_gudang, kota) VALUES (1, 'Gudang Jakarta', 'Jakarta');
INSERT INTO gudang (gudang_id, nama_gudang, kota) VALUES (2, 'Gudang Surabaya', 'Surabaya');
INSERT INTO gudang (gudang_id, nama_gudang, kota) VALUES (3, 'Gudang Medan', 'Medan');

INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (501, 1, 1, '2026-03-25', 'masuk', 10, 'Stok awal');
INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (502, 1, 1, '2026-04-01', 'keluar', 1, 'Pesanan 101');
INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (503, 1, 1, '2026-04-22', 'keluar', 1, 'Pesanan 110');
INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (504, 2, 1, '2026-03-25', 'masuk', 60, 'Stok awal');
INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (505, 2, 1, '2026-04-03', 'keluar', 1, 'Pesanan 102');
INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (506, 5, 2, '2026-03-25', 'masuk', 45, 'Stok awal');
INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (507, 5, 2, '2026-04-20', 'keluar', 4, 'Pesanan 109');
INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (508, 13, 2, '2026-04-23', 'keluar', 1, 'Pesanan 111');
INSERT INTO stok_mutasi (mutasi_id, produk_id, gudang_id, tanggal, jenis, qty, keterangan) VALUES (509, 14, 3, '2026-04-28', 'keluar', 2, 'Pesanan 113');
