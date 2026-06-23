-- Query Bank v4 #001: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #002: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #003: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #004: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #005: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #006: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #007: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #008: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #009: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #010: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #011: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #012: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #013: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #014: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #015: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #016: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #017: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #018: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #019: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #020: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #021: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #022: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #023: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #024: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #025: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #026: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #027: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #028: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #029: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #030: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #031: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #032: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #033: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #034: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #035: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #036: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #037: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #038: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #039: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #040: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #041: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #042: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #043: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #044: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #045: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #046: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #047: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #048: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #049: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #050: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #051: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #052: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #053: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #054: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #055: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #056: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #057: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #058: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #059: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #060: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #061: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #062: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #063: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #064: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #065: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #066: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #067: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #068: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #069: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #070: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #071: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #072: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #073: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #074: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #075: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #076: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #077: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #078: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #079: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #080: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #081: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #082: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #083: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #084: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #085: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #086: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #087: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #088: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #089: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #090: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #091: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #092: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #093: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #094: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #095: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #096: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #097: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #098: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #099: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #100: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #101: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #102: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #103: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #104: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #105: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #106: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #107: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #108: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #109: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #110: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #111: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #112: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #113: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #114: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #115: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #116: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #117: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #118: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #119: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #120: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #121: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #122: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #123: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #124: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #125: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #126: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #127: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #128: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #129: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #130: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #131: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #132: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #133: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #134: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #135: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #136: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #137: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #138: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #139: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #140: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #141: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #142: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #143: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #144: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #145: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #146: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #147: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #148: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #149: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #150: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #151: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #152: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #153: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #154: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #155: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #156: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #157: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #158: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #159: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #160: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #161: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #162: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #163: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #164: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #165: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #166: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #167: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #168: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #169: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #170: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #171: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #172: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #173: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #174: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #175: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #176: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #177: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #178: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #179: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #180: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #181: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #182: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #183: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #184: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #185: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #186: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #187: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #188: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #189: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #190: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #191: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #192: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #193: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #194: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #195: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #196: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #197: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #198: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #199: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #200: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #201: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #202: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #203: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #204: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #205: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #206: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #207: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #208: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #209: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #210: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #211: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #212: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #213: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #214: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #215: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #216: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #217: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #218: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #219: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #220: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #221: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #222: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #223: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #224: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #225: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #226: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #227: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #228: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #229: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #230: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #231: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #232: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #233: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #234: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #235: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #236: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #237: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #238: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #239: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #240: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #241: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #242: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #243: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #244: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #245: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #246: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #247: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #248: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #249: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #250: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #251: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #252: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #253: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #254: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #255: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #256: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #257: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #258: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #259: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #260: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #261: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #262: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #263: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #264: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #265: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #266: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #267: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #268: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #269: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #270: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #271: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #272: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #273: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #274: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #275: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #276: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #277: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #278: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #279: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #280: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #281: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #282: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #283: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #284: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #285: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #286: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #287: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #288: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #289: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #290: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #291: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #292: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #293: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #294: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #295: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #296: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #297: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #298: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #299: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #300: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #301: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #302: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #303: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #304: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #305: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #306: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #307: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #308: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #309: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #310: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #311: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #312: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #313: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #314: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #315: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #316: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #317: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #318: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #319: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #320: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #321: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #322: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #323: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #324: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #325: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #326: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #327: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #328: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #329: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #330: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #331: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #332: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #333: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #334: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #335: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #336: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #337: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #338: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #339: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #340: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #341: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #342: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #343: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #344: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #345: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #346: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #347: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #348: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #349: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #350: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #351: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #352: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #353: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #354: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #355: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #356: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #357: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #358: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #359: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #360: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #361: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #362: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #363: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #364: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #365: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #366: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #367: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #368: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #369: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #370: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #371: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #372: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #373: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #374: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #375: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #376: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #377: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #378: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #379: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #380: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #381: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #382: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #383: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #384: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #385: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #386: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #387: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #388: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #389: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #390: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #391: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #392: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #393: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #394: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #395: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #396: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #397: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #398: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #399: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #400: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #401: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #402: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #403: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #404: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #405: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #406: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #407: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #408: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #409: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #410: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #411: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #412: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #413: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #414: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #415: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #416: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #417: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #418: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #419: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #420: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #421: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #422: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #423: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #424: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #425: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #426: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #427: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #428: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #429: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #430: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #431: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #432: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #433: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #434: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #435: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #436: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #437: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #438: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #439: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #440: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #441: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #442: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #443: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #444: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #445: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #446: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #447: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #448: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #449: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #450: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #451: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #452: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #453: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #454: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #455: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #456: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #457: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #458: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #459: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #460: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #461: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #462: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #463: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #464: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #465: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #466: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #467: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #468: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #469: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #470: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #471: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #472: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #473: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #474: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #475: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #476: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #477: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #478: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #479: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #480: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #481: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #482: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #483: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #484: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #485: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #486: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #487: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #488: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #489: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #490: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #491: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #492: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Query Bank v4 #493: latihan variasi analisis toko_pintar
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Query Bank v4 #494: latihan variasi analisis toko_pintar
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Query Bank v4 #495: latihan variasi analisis toko_pintar
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Query Bank v4 #496: latihan variasi analisis toko_pintar
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Query Bank v4 #497: latihan variasi analisis toko_pintar
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Query Bank v4 #498: latihan variasi analisis toko_pintar
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Query Bank v4 #499: latihan variasi analisis toko_pintar
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Query Bank v4 #500: latihan variasi analisis toko_pintar
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;
