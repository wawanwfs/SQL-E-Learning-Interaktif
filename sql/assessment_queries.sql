-- Assessment queries

-- ==================================================
-- Query Bank 081
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 81
;

-- ==================================================
-- Query Bank 082
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 82
;

-- ==================================================
-- Query Bank 083
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 83
;

-- ==================================================
-- Query Bank 084
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 84
;

-- ==================================================
-- Query Bank 085
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 85
;

-- ==================================================
-- Query Bank 086
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 86
;

-- ==================================================
-- Query Bank 087
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 87
;

-- ==================================================
-- Query Bank 088
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 88
;

-- ==================================================
-- Query Bank 089
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 89
;

-- ==================================================
-- Query Bank 090
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 90
;

-- ==================================================
-- Query Bank 091
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 91
;

-- ==================================================
-- Query Bank 092
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 92
;

-- ==================================================
-- Query Bank 093
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 93
;

-- ==================================================
-- Query Bank 094
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 94
;

-- ==================================================
-- Query Bank 095
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 95
;

-- ==================================================
-- Query Bank 096
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 96
;

-- ==================================================
-- Query Bank 097
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 97
;

-- ==================================================
-- Query Bank 098
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 98
;

-- ==================================================
-- Query Bank 099
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 99
;

-- ==================================================
-- Query Bank 100
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 100
;

-- ==================================================
-- Query Bank 101
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 101
;

-- ==================================================
-- Query Bank 102
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 102
;

-- ==================================================
-- Query Bank 103
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 103
;

-- ==================================================
-- Query Bank 104
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 104
;

-- ==================================================
-- Query Bank 105
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 105
;

-- ==================================================
-- Query Bank 106
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 106
;

-- ==================================================
-- Query Bank 107
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 107
;

-- ==================================================
-- Query Bank 108
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 108
;

-- ==================================================
-- Query Bank 109
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 109
;

-- ==================================================
-- Query Bank 110
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 110
;

-- ==================================================
-- Query Bank 111
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 111
;

-- ==================================================
-- Query Bank 112
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 112
;

-- ==================================================
-- Query Bank 113
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 113
;

-- ==================================================
-- Query Bank 114
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 114
;

-- ==================================================
-- Query Bank 115
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 115
;

-- ==================================================
-- Query Bank 116
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 116
;

-- ==================================================
-- Query Bank 117
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 117
;

-- ==================================================
-- Query Bank 118
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 118
;

-- ==================================================
-- Query Bank 119
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 119
;

-- ==================================================
-- Query Bank 120
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 120
;
