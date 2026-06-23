-- Praktikum Full SQL v3.0

-- ==================================================
-- Query Bank 001
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 1
;

-- ==================================================
-- Query Bank 002
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 2
;

-- ==================================================
-- Query Bank 003
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 3
;

-- ==================================================
-- Query Bank 004
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 4
;

-- ==================================================
-- Query Bank 005
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 5
;

-- ==================================================
-- Query Bank 006
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 6
;

-- ==================================================
-- Query Bank 007
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 7
;

-- ==================================================
-- Query Bank 008
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 8
;

-- ==================================================
-- Query Bank 009
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 9
;

-- ==================================================
-- Query Bank 010
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 10
;

-- ==================================================
-- Query Bank 011
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 11
;

-- ==================================================
-- Query Bank 012
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 12
;

-- ==================================================
-- Query Bank 013
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 13
;

-- ==================================================
-- Query Bank 014
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 14
;

-- ==================================================
-- Query Bank 015
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 15
;

-- ==================================================
-- Query Bank 016
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 16
;

-- ==================================================
-- Query Bank 017
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 17
;

-- ==================================================
-- Query Bank 018
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 18
;

-- ==================================================
-- Query Bank 019
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 19
;

-- ==================================================
-- Query Bank 020
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 20
;

-- ==================================================
-- Query Bank 021
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 21
;

-- ==================================================
-- Query Bank 022
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 22
;

-- ==================================================
-- Query Bank 023
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 23
;

-- ==================================================
-- Query Bank 024
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 24
;

-- ==================================================
-- Query Bank 025
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 25
;

-- ==================================================
-- Query Bank 026
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 26
;

-- ==================================================
-- Query Bank 027
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 27
;

-- ==================================================
-- Query Bank 028
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 28
;

-- ==================================================
-- Query Bank 029
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 29
;

-- ==================================================
-- Query Bank 030
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 30
;

-- ==================================================
-- Query Bank 031
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 31
;

-- ==================================================
-- Query Bank 032
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 32
;

-- ==================================================
-- Query Bank 033
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 33
;

-- ==================================================
-- Query Bank 034
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 34
;

-- ==================================================
-- Query Bank 035
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 35
;

-- ==================================================
-- Query Bank 036
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 36
;

-- ==================================================
-- Query Bank 037
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 37
;

-- ==================================================
-- Query Bank 038
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 38
;

-- ==================================================
-- Query Bank 039
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 39
;

-- ==================================================
-- Query Bank 040
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 40
;

-- ==================================================
-- Query Bank 041
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 41
;

-- ==================================================
-- Query Bank 042
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 42
;

-- ==================================================
-- Query Bank 043
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 43
;

-- ==================================================
-- Query Bank 044
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 44
;

-- ==================================================
-- Query Bank 045
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 45
;

-- ==================================================
-- Query Bank 046
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 46
;

-- ==================================================
-- Query Bank 047
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 47
;

-- ==================================================
-- Query Bank 048
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 48
;

-- ==================================================
-- Query Bank 049
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 49
;

-- ==================================================
-- Query Bank 050
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 50
;

-- ==================================================
-- Query Bank 051
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 51
;

-- ==================================================
-- Query Bank 052
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 52
;

-- ==================================================
-- Query Bank 053
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 53
;

-- ==================================================
-- Query Bank 054
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 54
;

-- ==================================================
-- Query Bank 055
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 55
;

-- ==================================================
-- Query Bank 056
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 56
;

-- ==================================================
-- Query Bank 057
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 57
;

-- ==================================================
-- Query Bank 058
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 58
;

-- ==================================================
-- Query Bank 059
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 59
;

-- ==================================================
-- Query Bank 060
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 60
;

-- ==================================================
-- Query Bank 061
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 61
;

-- ==================================================
-- Query Bank 062
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 62
;

-- ==================================================
-- Query Bank 063
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 63
;

-- ==================================================
-- Query Bank 064
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 64
;

-- ==================================================
-- Query Bank 065
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 65
;

-- ==================================================
-- Query Bank 066
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 66
;

-- ==================================================
-- Query Bank 067
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 67
;

-- ==================================================
-- Query Bank 068
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 68
;

-- ==================================================
-- Query Bank 069
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 69
;

-- ==================================================
-- Query Bank 070
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 70
;

-- ==================================================
-- Query Bank 071
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 71
;

-- ==================================================
-- Query Bank 072
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 72
;

-- ==================================================
-- Query Bank 073
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 73
;

-- ==================================================
-- Query Bank 074
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 74
;

-- ==================================================
-- Query Bank 075
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 75
;

-- ==================================================
-- Query Bank 076
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 76
;

-- ==================================================
-- Query Bank 077
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 77
;

-- ==================================================
-- Query Bank 078
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 78
;

-- ==================================================
-- Query Bank 079
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 79
;

-- ==================================================
-- Query Bank 080
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 80
;
