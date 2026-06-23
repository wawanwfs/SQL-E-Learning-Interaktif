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

-- ==================================================
-- Query Bank 121
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 121
;

-- ==================================================
-- Query Bank 122
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 122
;

-- ==================================================
-- Query Bank 123
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 123
;

-- ==================================================
-- Query Bank 124
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 124
;

-- ==================================================
-- Query Bank 125
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 125
;

-- ==================================================
-- Query Bank 126
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 126
;

-- ==================================================
-- Query Bank 127
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 127
;

-- ==================================================
-- Query Bank 128
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 128
;

-- ==================================================
-- Query Bank 129
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 129
;

-- ==================================================
-- Query Bank 130
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 130
;

-- ==================================================
-- Query Bank 131
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 131
;

-- ==================================================
-- Query Bank 132
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 132
;

-- ==================================================
-- Query Bank 133
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 133
;

-- ==================================================
-- Query Bank 134
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 134
;

-- ==================================================
-- Query Bank 135
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 135
;

-- ==================================================
-- Query Bank 136
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 136
;

-- ==================================================
-- Query Bank 137
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 137
;

-- ==================================================
-- Query Bank 138
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 138
;

-- ==================================================
-- Query Bank 139
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 139
;

-- ==================================================
-- Query Bank 140
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 140
;

-- ==================================================
-- Query Bank 141
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 141
;

-- ==================================================
-- Query Bank 142
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 142
;

-- ==================================================
-- Query Bank 143
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 143
;

-- ==================================================
-- Query Bank 144
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 144
;

-- ==================================================
-- Query Bank 145
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 145
;

-- ==================================================
-- Query Bank 146
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 146
;

-- ==================================================
-- Query Bank 147
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 147
;

-- ==================================================
-- Query Bank 148
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 148
;

-- ==================================================
-- Query Bank 149
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 149
;

-- ==================================================
-- Query Bank 150
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 150
;

-- ==================================================
-- Query Bank 151
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 151
;

-- ==================================================
-- Query Bank 152
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 152
;

-- ==================================================
-- Query Bank 153
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 153
;

-- ==================================================
-- Query Bank 154
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 154
;

-- ==================================================
-- Query Bank 155
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 155
;

-- ==================================================
-- Query Bank 156
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 156
;

-- ==================================================
-- Query Bank 157
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 157
;

-- ==================================================
-- Query Bank 158
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 158
;

-- ==================================================
-- Query Bank 159
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 159
;

-- ==================================================
-- Query Bank 160
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 160
;

-- ==================================================
-- Query Bank 161
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 161
;

-- ==================================================
-- Query Bank 162
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 162
;

-- ==================================================
-- Query Bank 163
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 163
;

-- ==================================================
-- Query Bank 164
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 164
;

-- ==================================================
-- Query Bank 165
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 165
;

-- ==================================================
-- Query Bank 166
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 166
;

-- ==================================================
-- Query Bank 167
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 167
;

-- ==================================================
-- Query Bank 168
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 168
;

-- ==================================================
-- Query Bank 169
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 169
;

-- ==================================================
-- Query Bank 170
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 170
;

-- ==================================================
-- Query Bank 171
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 171
;

-- ==================================================
-- Query Bank 172
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 172
;

-- ==================================================
-- Query Bank 173
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 173
;

-- ==================================================
-- Query Bank 174
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 174
;

-- ==================================================
-- Query Bank 175
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 175
;

-- ==================================================
-- Query Bank 176
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 176
;

-- ==================================================
-- Query Bank 177
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 177
;

-- ==================================================
-- Query Bank 178
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 178
;

-- ==================================================
-- Query Bank 179
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 179
;

-- ==================================================
-- Query Bank 180
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 180
;

-- ==================================================
-- Query Bank 181
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 181
;

-- ==================================================
-- Query Bank 182
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 182
;

-- ==================================================
-- Query Bank 183
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 183
;

-- ==================================================
-- Query Bank 184
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 184
;

-- ==================================================
-- Query Bank 185
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 185
;

-- ==================================================
-- Query Bank 186
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 186
;

-- ==================================================
-- Query Bank 187
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 187
;

-- ==================================================
-- Query Bank 188
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 188
;

-- ==================================================
-- Query Bank 189
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 189
;

-- ==================================================
-- Query Bank 190
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 190
;

-- ==================================================
-- Query Bank 191
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 191
;

-- ==================================================
-- Query Bank 192
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 192
;

-- ==================================================
-- Query Bank 193
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 193
;

-- ==================================================
-- Query Bank 194
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 194
;

-- ==================================================
-- Query Bank 195
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 195
;

-- ==================================================
-- Query Bank 196
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 196
;

-- ==================================================
-- Query Bank 197
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 197
;

-- ==================================================
-- Query Bank 198
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 198
;

-- ==================================================
-- Query Bank 199
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 199
;

-- ==================================================
-- Query Bank 200
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 200
;

-- ==================================================
-- Query Bank 201
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 201
;

-- ==================================================
-- Query Bank 202
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 202
;

-- ==================================================
-- Query Bank 203
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 203
;

-- ==================================================
-- Query Bank 204
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 204
;

-- ==================================================
-- Query Bank 205
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 205
;

-- ==================================================
-- Query Bank 206
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 206
;

-- ==================================================
-- Query Bank 207
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 207
;

-- ==================================================
-- Query Bank 208
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 208
;

-- ==================================================
-- Query Bank 209
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 209
;

-- ==================================================
-- Query Bank 210
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 210
;

-- ==================================================
-- Query Bank 211
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 211
;

-- ==================================================
-- Query Bank 212
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 212
;

-- ==================================================
-- Query Bank 213
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 213
;

-- ==================================================
-- Query Bank 214
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 214
;

-- ==================================================
-- Query Bank 215
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 215
;

-- ==================================================
-- Query Bank 216
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 216
;

-- ==================================================
-- Query Bank 217
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 217
;

-- ==================================================
-- Query Bank 218
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 218
;

-- ==================================================
-- Query Bank 219
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 219
;

-- ==================================================
-- Query Bank 220
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 220
;

-- ==================================================
-- Query Bank 221
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 221
;

-- ==================================================
-- Query Bank 222
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 222
;

-- ==================================================
-- Query Bank 223
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 223
;

-- ==================================================
-- Query Bank 224
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 224
;

-- ==================================================
-- Query Bank 225
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 225
;

-- ==================================================
-- Query Bank 226
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 226
;

-- ==================================================
-- Query Bank 227
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 227
;

-- ==================================================
-- Query Bank 228
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 228
;

-- ==================================================
-- Query Bank 229
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 229
;

-- ==================================================
-- Query Bank 230
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 230
;

-- ==================================================
-- Query Bank 231
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 231
;

-- ==================================================
-- Query Bank 232
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 232
;

-- ==================================================
-- Query Bank 233
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 233
;

-- ==================================================
-- Query Bank 234
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 234
;

-- ==================================================
-- Query Bank 235
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 235
;

-- ==================================================
-- Query Bank 236
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 236
;

-- ==================================================
-- Query Bank 237
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 237
;

-- ==================================================
-- Query Bank 238
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 238
;

-- ==================================================
-- Query Bank 239
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 239
;

-- ==================================================
-- Query Bank 240
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 240
;

-- ==================================================
-- Query Bank 241
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 241
;

-- ==================================================
-- Query Bank 242
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 242
;

-- ==================================================
-- Query Bank 243
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 243
;

-- ==================================================
-- Query Bank 244
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 244
;

-- ==================================================
-- Query Bank 245
SELECT pb.metode, pb.status_bayar, COUNT(*) AS jumlah_transaksi, SUM(ps.total) AS nilai_pesanan
FROM pembayaran pb
JOIN pesanan ps ON ps.pesanan_id = pb.pesanan_id
GROUP BY pb.metode, pb.status_bayar
ORDER BY nilai_pesanan DESC
-- Query bank nomor 245
;

-- ==================================================
-- Query Bank 246
SELECT p.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet
FROM pesanan ps
JOIN pelanggan p ON p.pelanggan_id = ps.pelanggan_id
GROUP BY p.kota
ORDER BY omzet DESC
-- Query bank nomor 246
;

-- ==================================================
-- Query Bank 247
SELECT k.nama_kategori, COUNT(pr.produk_id) AS jumlah_produk, AVG(pr.harga) AS rata_harga
FROM kategori k
LEFT JOIN produk pr ON pr.kategori_id = k.kategori_id
GROUP BY k.nama_kategori
ORDER BY jumlah_produk DESC
-- Query bank nomor 247
;

-- ==================================================
-- Query Bank 248
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_nilai
FROM pesanan ps
GROUP BY ps.status
ORDER BY total_nilai DESC
-- Query bank nomor 248
;

-- ==================================================
-- Query Bank 249
SELECT p.nama, COUNT(ps.pesanan_id) AS frekuensi_order, SUM(ps.total) AS total_belanja
FROM pelanggan p
LEFT JOIN pesanan ps ON ps.pelanggan_id = p.pelanggan_id
GROUP BY p.nama
ORDER BY total_belanja DESC
-- Query bank nomor 249
;

-- ==================================================
-- Query Bank 250
SELECT pr.nama_produk, pr.stok, g.nama_gudang
FROM produk pr
LEFT JOIN gudang g ON g.gudang_id = pr.gudang_id
WHERE pr.stok < 20
ORDER BY pr.stok ASC
-- Query bank nomor 250
;
