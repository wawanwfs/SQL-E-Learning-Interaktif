# Panduan GitHub Pages

Proyek ini menggunakan struktur statis sehingga dapat dipublikasikan melalui GitHub Pages tanpa server backend.

Langkah ringkas:

1. Buat repository baru.
2. Upload seluruh file dan folder dari paket ini.
3. Pastikan `index.html` berada di root repository.
4. Buka `Settings` → `Pages`.
5. Pilih sumber dari branch `main` dan folder `/root`.
6. Simpan pengaturan dan tunggu proses publikasi.

Catatan teknis:

- Progress belajar, nama peserta, jawaban quiz, latihan selesai, draft query, tema, dan status playground disimpan di `localStorage` browser pengguna.
- Data tidak dikirim ke server dan tidak tersinkron antar perangkat.
- Service worker hanya melakukan cache aset inti, bukan folder `datasets/large/` dan bukan file PDF.
- Bila ingin repository lebih ringan, gunakan versi LIGHT atau hapus folder `datasets/large/`.
