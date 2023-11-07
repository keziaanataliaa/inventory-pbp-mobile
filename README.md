# inventory_pbp

## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Dalam konteks pengembangan aplikasi Flutter, terdapat dua jenis widget utama: stateless widget dan stateful widget. Stateless widget tidak memiliki keadaan internal dan tampilannya tetap statis sepanjang masa hidupnya. Mereka efisien secara performa karena tidak memerlukan pembaruan keadaan. Di sisi lain, stateful widget memiliki keadaan internal yang dapat berubah selama siklus hidupnya. Hal ini memungkinkan mereka untuk merespons perubahan dan memperbarui tampilan secara dinamis. Stateful widget digunakan ketika kita membutuhkan komponen UI yang dapat berubah atau berinteraksi dengan pengguna, seperti formulir atau tampilan dinamis lainnya. Dalam konteks pengembangan Flutter, pemahaman yang baik tentang kapan menggunakan masing-masing jenis widget akan membantu dalam merancang antarmuka pengguna yang efisien dan responsif.

## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

1. **`MaterialApp`:**
   - Fungsi: Widget ini digunakan untuk mengonfigurasi dan membangun root dari aplikasi Flutter. Pada kode saya, di dalam widget `MaterialApp`, didefinisikan tema (theme) aplikasi, judul, dan halaman utama (home).

2. **`Scaffold`:**
   - Fungsi: Widget ini digunakan untuk menyediakan struktur kerangka atau layout dasar untuk aplikasi. Pada kode saya, di dalam widget `Scaffold` ditentukan AppBar dan body dari aplikasi. Pada kode, `Scaffold` memiliki sebuah `AppBar` dan sebuah `SingleChildScrollView` sebagai body.

3. **`AppBar`:**
   - Fungsi: Widget ini digunakan untuk menampilkan bar navigasi di bagian atas aplikasi. Pada kode saya, `AppBar` memiliki judul "Inventory".

4. **`SingleChildScrollView`:**
   - Fungsi: Widget ini memungkinkan konten untuk dapat discroll jika melebihi ukuran layar. Pada kode saya, di dalam widget `SingleChildScrollView`, terdapat `Padding` dan `Column` yang menampung konten dari halaman.

5. **`Padding`:**
   - Fungsi: Widget ini digunakan untuk menambahkan padding atau ruang putih di sekitar widget-child di dalamnya. Pada kode saya, di dalam widget `Padding`, terdapat `Column` yang merupakan komponen untuk menampilkan children secara vertikal.

6. **`Column`:**
   - Fungsi: Widget ini digunakan untuk mengatur tata letak (layout) vertikal dari widget-child di dalamnya. Pada kode saya, di dalam widget `Column`, terdapat beberapa child, termasuk sebuah `Text` dan sebuah `GridView.count`.

7. **`Text`:**
   - Fungsi: Widget ini digunakan untuk menampilkan teks. Pada kode saya, `Text` digunakan untuk menampilkan teks "PBP Shop" dengan properti tertentu seperti alignment dan style.

8. **`GridView.count`:**
   - Fungsi: Widget ini digunakan untuk menampilkan child dalam bentuk grid dengan jumlah kolom tertentu. Pada kode saya, di dalam widget `GridView.count`, terdapat daftar `ShopCard` yang diperoleh dari list `items`.

9. **`ShopCard`:**
   - Fungsi: Widget ini merupakan custom widget yang digunakan untuk menampilkan sebuah item dalam bentuk kartu. Pada kode saya, widget `ShopCard` menerima sebuah objek `ShopItem` dan menampilkan ikon, nama, serta memberikan respons saat di-tap.

10. **`ShopItem`:**
    - Fungsi: Kelas ini digunakan untuk merepresentasikan informasi tentang item dalam toko. Pada kode saya, setiap `ShopItem` memiliki atribut nama, ikon, dan warna.

11. **`InkWell`:**
    - Fungsi: Widget ini memungkinkan untuk menambahkan efek ink splash ketika widget ditekan. Pada kode saya, di dalam widget `InkWell`, terdapat sebuah `Container` yang berisi ikon dan teks dari `ShopCard`.

12. **`Material`:**
    - Fungsi: Widget ini digunakan untuk menerapkan material design pada konten aplikasi. Pada kode saya, widget ini digunakan untuk mengatur warna latar belakang kartu sesuai dengan warna dari `ShopItem`.




## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

1. **Buka Terminal atau Command Prompt:**
   - Buka terminal atau command prompt.

2. **Buat dan Masuk ke Direktori Proyek:**
   - Jalankan perintah `mkdir inventory_pbp` untuk membuat direktori baru dengan nama `inventory_pbp`.
   - Masuk ke direktori proyek dengan perintah `cd inventory_pbp`.

3. **Generate Proyek Flutter Baru:**
   - Jalankan perintah `flutter create inventory_pbp` untuk membuat proyek Flutter baru dengan nama `inventory_pbp`.

4. **Masuk ke Direktori Proyek:**
   - Setelah proyek dibuat, masuk ke dalam direktori proyek dengan perintah `cd inventory_pbp`.

5. **Jalankan Proyek:**
   - Jalankan perintah `flutter run` untuk memulai proyek Flutter.

8. **Buat File `menu.dart`:**
   - Buat file baru bernama `menu.dart` di dalam direktori `lib` pada proyek `inventory_pbp`.
   - Tambahkan import statement: `import 'package:flutter/material.dart';`.

9. **Pindahkan Kode dari `main.dart` ke `menu.dart`:**
   - Pindahkan kode dari class `MyHomePage` ke file `menu.dart` setelah menambahkan import statement.
   
10. **Tambahkan Import di `main.dart`:**
    - Tambahkan import statement untuk file `menu.dart` di awal `main.dart`.

11. **Ubah Tema Aplikasi Menjadi Indigo:**
    - Di dalam widget `MaterialApp` pada `main.dart`, ubah properti `colorScheme` untuk mengatur tema warna aplikasi menjadi indigo.

12. **Ubah Sifat Widget Halaman Menu Menjadi Stateless:**
    - Di dalam file `menu.dart`, ubah class `MyHomePage` menjadi stateless widget.

13. **Tambahkan Class `ShopItem`:**
    - Di dalam file `menu.dart`, tambahkan class `ShopItem` untuk merepresentasikan informasi barang yang dijual.

14. **Tambahkan List Barang `items`:**
    - Di dalam class `MyHomePage` pada file `menu.dart`, tambahkan list `items` yang berisi informasi barang yang dijual.

15. **Tambahkan Widget untuk Menampilkan Toko dan Card:**
    - Di dalam class `MyHomePage` pada file `menu.dart`, tambahkan widget untuk menampilkan nama toko dan grid layout dari card-card barang.

16. **Buat Class `ShopCard`:**
    - Di dalam file `menu.dart`, tambahkan class `ShopCard` untuk menampilkan card dengan informasi barang.






