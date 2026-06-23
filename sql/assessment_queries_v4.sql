-- Assessment v4 Case 001: Kasus 001: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 002: Kasus 002: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 003: Kasus 003: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 004: Kasus 004: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 005: Kasus 005: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 006: Kasus 006: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 007: Kasus 007: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 008: Kasus 008: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 009: Kasus 009: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 010: Kasus 010: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 011: Kasus 011: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 012: Kasus 012: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 013: Kasus 013: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 014: Kasus 014: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 015: Kasus 015: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 016: Kasus 016: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 017: Kasus 017: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 018: Kasus 018: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 019: Kasus 019: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 020: Kasus 020: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 021: Kasus 021: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 022: Kasus 022: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 023: Kasus 023: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 024: Kasus 024: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 025: Kasus 025: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 026: Kasus 026: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 027: Kasus 027: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 028: Kasus 028: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 029: Kasus 029: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 030: Kasus 030: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 031: Kasus 031: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 032: Kasus 032: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 033: Kasus 033: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 034: Kasus 034: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 035: Kasus 035: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 036: Kasus 036: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 037: Kasus 037: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 038: Kasus 038: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 039: Kasus 039: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 040: Kasus 040: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 041: Kasus 041: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 042: Kasus 042: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 043: Kasus 043: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 044: Kasus 044: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 045: Kasus 045: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 046: Kasus 046: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 047: Kasus 047: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 048: Kasus 048: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 049: Kasus 049: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 050: Kasus 050: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 051: Kasus 051: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 052: Kasus 052: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 053: Kasus 053: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 054: Kasus 054: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 055: Kasus 055: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 056: Kasus 056: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 057: Kasus 057: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 058: Kasus 058: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 059: Kasus 059: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 060: Kasus 060: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 061: Kasus 061: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 062: Kasus 062: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 063: Kasus 063: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 064: Kasus 064: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 065: Kasus 065: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 066: Kasus 066: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 067: Kasus 067: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 068: Kasus 068: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 069: Kasus 069: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 070: Kasus 070: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 071: Kasus 071: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 072: Kasus 072: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 073: Kasus 073: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 074: Kasus 074: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 075: Kasus 075: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 076: Kasus 076: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 077: Kasus 077: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 078: Kasus 078: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 079: Kasus 079: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 080: Kasus 080: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 081: Kasus 081: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 082: Kasus 082: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 083: Kasus 083: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 084: Kasus 084: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 085: Kasus 085: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 086: Kasus 086: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 087: Kasus 087: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 088: Kasus 088: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 089: Kasus 089: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 090: Kasus 090: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 091: Kasus 091: Omzet kota
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 092: Kasus 092: Pelanggan prioritas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;

-- Assessment v4 Case 093: Kasus 093: Pembayaran belum lunas
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pr.nama_produk, AVG(u.rating) AS rata_rating, COUNT(u.ulasan_id) AS jumlah_ulasan FROM produk pr LEFT JOIN ulasan u ON u.produk_id = pr.produk_id GROUP BY pr.nama_produk ORDER BY rata_rating DESC;

-- Assessment v4 Case 094: Kasus 094: SLA pengiriman
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT g.nama_gudang, p.nama_produk, sm.jenis_mutasi, sm.jumlah FROM stok_mutasi sm JOIN gudang g ON g.gudang_id = sm.gudang_id JOIN produk p ON p.produk_id = sm.produk_id ORDER BY sm.tanggal_mutasi DESC LIMIT 10;

-- Assessment v4 Case 095: Kasus 095: Produk rating rendah
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.pesanan_id, pel.nama, ps.total, pb.status_bayar FROM pesanan ps JOIN pelanggan pel ON pel.pelanggan_id = ps.pelanggan_id JOIN pembayaran pb ON pb.pesanan_id = ps.pesanan_id ORDER BY ps.total DESC LIMIT 10;

-- Assessment v4 Case 096: Kasus 096: Segmentasi RFM
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pelanggan_id, nama, kota, level FROM pelanggan ORDER BY kota, nama LIMIT 10;

-- Assessment v4 Case 097: Kasus 097: Retensi cohort
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT kategori_id, COUNT(*) AS jumlah_produk FROM produk GROUP BY kategori_id ORDER BY jumlah_produk DESC;

-- Assessment v4 Case 098: Kasus 098: Margin kategori
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT p.nama_produk, k.nama_kategori, p.harga, p.stok FROM produk p JOIN kategori k ON k.kategori_id = p.kategori_id ORDER BY p.stok ASC LIMIT 10;

-- Assessment v4 Case 099: Kasus 099: Audit duplikasi
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT ps.status, COUNT(*) AS jumlah, SUM(ps.total) AS total_transaksi FROM pesanan ps GROUP BY ps.status ORDER BY total_transaksi DESC;

-- Assessment v4 Case 100: Kasus 100: Stok kritis
-- Deliverables: pertanyaan bisnis, query SQL, validasi output, interpretasi, rekomendasi
SELECT pel.kota, COUNT(ps.pesanan_id) AS jumlah_order, SUM(ps.total) AS omzet FROM pelanggan pel JOIN pesanan ps ON ps.pelanggan_id = pel.pelanggan_id GROUP BY pel.kota ORDER BY omzet DESC;
