# Laporan Praktikum

A Flutter project Books.

## Praktikum 1
### Soal 2
![Capture soal 2](assets/books1.png)

### Soal 3
![Capture soal 3](assets/books2.gif)

1. Penggunaan substring(0, 450)
substring(0, 450): Mengambil 450 karakter, mulai karakter 0 sampai 450 dari hasil response.
Berguna jika response terlalu panjang, sehingga hanya sebagian kecil ditampilkan.

2. catchError(_)
Menangani Kesalahan (Error Handling) jika getData() gagal (misalnya koneksi terputus atau server error), fungsi catchError() akan menangkap error tersebut.
Error ditangani dengan menampilkan pesan "An Error Occurred" agar pengguna tahu ada masalah. 
setState(() {}); dipanggil agar UI diperbarui dengan pesan error.