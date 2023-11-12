# inventory_pbp

## Tugas 8

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
1. **Navigator.push():**
   - Metode ini digunakan untuk menambahkan halaman baru ke tumpukan navigasi.
   - Halaman sebelumnya tetap ada di tumpukan, dan pengguna dapat kembali ke halaman sebelumnya dengan tombol kembali atau gestur kembali.
   - Berguna ketika ingin menumpuk halaman-halaman pada tumpukan navigasi.

Contoh penggunaan `Navigator.push()`:

```dart
// Navigasi ke halaman baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
);
```

2. **Navigator.pushReplacement():**
   - Metode ini digunakan untuk menambahkan halaman baru ke tumpukan navigasi dan menggantikan halaman yang ada di tumpukan dengan halaman baru.
   - Halaman sebelumnya dihapus dari tumpukan, sehingga pengguna tidak dapat kembali ke halaman tersebut.
   - Berguna ketika ingin menggantikan halaman yang sudah ada dengan halaman baru, misalnya setelah pengguna berhasil masuk atau mendaftar.

Contoh penggunaan `Navigator.pushReplacement()`:

```dart
// Navigasi ke halaman baru dan menggantikan halaman sebelumnya
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
);
```

## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
1. **Container:**
   - **Penjelasan:** `Container` adalah widget serbaguna yang dapat digunakan untuk menentukan berbagai properti seperti ukuran, padding, margin, dan warna latar. Ini memungkinkan membungkus dan mengatur tata letak widget lainnya.
   - **Konteks Penggunaan:** Ideal untuk mengatur properti-properti dasar dan menata widget lain di dalamnya dengan properti yang sudah ditentukan.

2. **Row dan Column:**
   - **Penjelasan:** `Row` dan `Column` digunakan untuk menyusun widget secara horizontal (`Row`) atau vertikal (`Column`). Mereka membantu mengorganisir tata letak dalam satu arah.
   - **Konteks Penggunaan:** Berguna untuk menyusun widget seperti tombol, teks, atau gambar dalam satu baris atau kolom, menciptakan tata letak yang linear.

3. **ListView:**
   - **Penjelasan:** `ListView` adalah widget yang digunakan untuk membuat daftar scrollable (bergulir) dari widget. Ini sangat berguna ketika memiliki daftar item yang mungkin lebih panjang dari layar perangkat.
   - **Konteks Penggunaan:** Cocok untuk menampilkan daftar item dalam aplikasi, seperti daftar pesan, kontak, atau berita.

4. **Stack:**
   - **Penjelasan:** `Stack` memungkinkan penumpukan widget di atas satu sama lain, memungkinkan tata letak yang lebih kompleks dan layering.
   - **Konteks Penggunaan:** Berguna ketika perlu menempatkan widget di atas widget lainnya, seperti dalam pembuatan overlay atau desain yang lebih kompleks.

5. **Expanded dan Flexible:**
   - **Penjelasan:** `Expanded` dan `Flexible` digunakan dalam `Row` atau `Column` untuk memberikan ukuran dinamis kepada widget. Ini membantu mendistribusikan ruang yang tersedia sesuai dengan proporsi tertentu.
   - **Konteks Penggunaan:** Berguna untuk membuat widget berukuran dinamis, terutama ketika ingin memberikan ruang lebih banyak kepada satu widget dibandingkan yang lain.

6. **SizedBox:**
   - **Penjelasan:** `SizedBox` digunakan untuk menentukan ukuran tepat untuk suatu widget atau memberikan ruang putih di antara widget.
   - **Konteks Penggunaan:** Berguna ketika perlu menentukan dimensi tepat dari suatu widget atau memberikan spasi di antara widget.

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
1. **TextFormField untuk Nama Item:**
   - **Alasan Penggunaan:** Digunakan untuk memasukkan nama item. TextFormField digunakan karena memberikan kontrol input teks dengan kemampuan validasi dan tampilan yang sesuai untuk pengguna memasukkan teks.

2. **TextFormField untuk Jumlah:**
   - **Alasan Penggunaan:** Digunakan untuk memasukkan jumlah item. TextFormField digunakan dengan validasi untuk memastikan bahwa nilai yang dimasukkan adalah angka.

3. **TextFormField untuk Harga:**
   - **Alasan Penggunaan:** Digunakan untuk memasukkan harga item. TextFormField digunakan dengan validasi untuk memastikan bahwa nilai yang dimasukkan adalah angka.

4. **TextFormField untuk Deskripsi:**
   - **Alasan Penggunaan:** Digunakan untuk memasukkan deskripsi item. TextFormField digunakan karena memberikan kontrol input teks untuk pengguna memasukkan deskripsi dengan kemampuan validasi.


## Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean Architecture adalah konsep arsitektur perangkat lunak yang bertujuan untuk memisahkan konsep-konsep inti dari aspek teknis tertentu. Dalam konteks Flutter, penerapan Clean Architecture dapat membantu membuat kode yang bersih, terstruktur, dan mudah diuji. Berikut adalah langkah-langkah umum untuk menerapkan Clean Architecture pada aplikasi Flutter:
Berikut adalah panduan singkat untuk menerapkan Clean Architecture pada aplikasi Flutter:

1. **Identifikasi Layer-Layer Clean Architecture:**
   - Entities: Representasi konsep bisnis utama.
   - Use Cases: Logika bisnis dan aturan aplikasi.
   - Repositories: API untuk mengakses data.
   - Frameworks and Drivers: Implementasi teknis, seperti UI dan database.

2. **Implementasi Entities:**
   - Buat kelas atau objek mandiri yang mewakili konsep bisnis utama.

3. **Implementasi Use Cases (Interactors):**
   - Terpisah dari detail teknis, seperti UI atau database.
   - Gunakan dependency inversion untuk mengurangi ketergantungan.

4. **Implementasi Repositories:**
   - Buat repository interface untuk akses dan penyimpanan data.
   - Implementasikan interface di lapisan repository dengan teknologi spesifik.

5. **Implementasi Frameworks and Drivers:**
   - Implementasikan UI, database, dan repository di lapisan ini.
   - Lapisan ini hanya berisi detail teknis.

6. **Mengintegrasikan Komponen:**
   - Hubungkan semua lapisan menggunakan dependency injection atau service locator.

7. **Uji Aplikasi:**
   - Uji setiap lapisan secara terpisah untuk memastikan kebersihan dan fungsionalitas.

8. **Pertimbangkan Design Patterns:**
   - Gunakan design patterns seperti Dependency Injection dan Repository Pattern.


## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
### Menambahkan Drawer Menu Untuk Navigasi

1. **Buat Berkas Baru:**
   - Buatlah berkas baru bernama `left_drawer.dart` di dalam direktori `widgets`.
   - Tambahkan drawer widget dengan sebuah `ListView` di dalamnya.

2. **Impor Halaman:**
   - Impor halaman-halaman yang akan ditambahkan ke drawer, seperti `MyHomePage` dan `ShopFormPage`.

3. **Tambahkan Navigasi ke Drawer:**
   - Dalam bagian routing pada drawer, tambahkan ListTile untuk setiap halaman yang ingin ditambahkan.
   - Gunakan `Navigator.pushReplacement` untuk mengarahkan ke halaman baru.

4. **Hias Drawer:**
   - Tambahkan dekorasi dan teks pada bagian drawer header untuk memberikan tampilan menarik.
   - Sesuaikan desain dan tata letak sesuai kebutuhan.

5. **Integrasikan Drawer ke Halaman:**
   - Impor drawer yang sudah dibuat ke halaman yang ingin ditambahkan drawer-nya.
   - Masukkan drawer sebagai parameter nilai `drawer` pada widget `Scaffold`.

### Memunculkan Data

1. **Buat Berkas Form Baru:**
   - Buatlah berkas baru bernama `shoplist_form.dart` di dalam direktori `lib`.
   - Tambahkan widget `Scaffold` dengan `AppBar` dan `drawer` yang sudah dibuat sebelumnya.

2. **Tambahkan Form Widget:**
   - Gunakan widget `Form` sebagai wadah untuk input fields.
   - Gunakan `SingleChildScrollView` untuk membuat form menjadi scrollable.

3. **Implementasi Input Fields:**
   - Tambahkan `TextFormField` untuk setiap elemen input yang dibutuhkan.
   - Gunakan `Padding` dan `Column` untuk merapikan tata letak elemen input.

4. **Validasi Input:**
   - Gunakan atribut `onChanged` pada `TextFormField` untuk mendeteksi perubahan nilai.
   - Terapkan validasi menggunakan atribut `validator` untuk memastikan input sesuai kebutuhan.

5. **Munculkan Data pada AlertDialog:**
   - Gunakan `showDialog` ketika formulir tervalidasi.
   - Tampilkan data yang dimasukkan oleh pengguna pada `AlertDialog`.
   - Reset formulir setelah data ditampilkan.

### Menambahkan Fitur Navigasi pada Tombol

1. **Navigasi dari Tombol pada ShopItem:**
   - Di dalam fungsi `onTap` pada widget `ShopItem`, gunakan `Navigator.push` untuk melakukan navigasi ke halaman yang sesuai.

### Menambahkan Navigasi ke `ChocoListPage` pada Drawer

1. **Buka `left_drawer.dart`:**
   - Tambahkan impor untuk `ChocoListPage`.
   - Perbarui bagian `ListView` pada drawer dengan menambahkan `ListTile` baru untuk navigasi ke `ChocoListPage`.

### Integrasikan `ChocoListPage` ke dalam Aplikasi Utama

1. **Buka `menu.dart` atau Halaman Utama:**
   - Impor `ChocoListPage`.
   - Tambahkan tombol atau elemen UI untuk menavigasi ke `ChocoListPage` di dalam `ListView` atau bagian yang sesuai pada halaman utama.

### Tambahan untuk `ChocoListPage`

1. **Buat Berkas Baru:**
   - Buatlah berkas baru bernama `choco_models.dart` di dalam direktori `models`.
   - Tambahkan definisi model `Choco` ke dalam berkas tersebut.

2. **Buat Berkas Baru untuk `ChocoListPage`:**
   - Buat berkas baru bernama `chocolist_page.dart` di dalam direktori `lib`.
   - Tambahkan widget `ChocoListPage` dengan konstruktor untuk menerima daftar coklat.

3. **Gunakan Navigasi untuk Beralih Antara Halaman:**
   - Gunakan `Navigator.push` pada tombol atau elemen UI di halaman utama untuk beralih ke `ChocoListPage`.
   - Pastikan untuk menyertakan daftar coklat (`chocoList`) sebagai parameter.

### Refactoring File

1. **Buat Berkas Baru untuk Widget:**
   - Buatlah berkas baru bernama `shop_card.dart` di dalam direktori `widgets`.
   - Pindahkan isi widget `ShopItem` dari `menu.dart` ke dalam `shop_card.dart`.

2. **Impor File ke dalam Folder:**
   - Buat folder baru bernama `screens` di dalam direktori `lib`.
   - Pindahkan berkas `menu.dart` dan `shoplist_form.dart` ke dalam folder `screens`.

3. **Pastikan Refactoring Dilakukan dengan IDE:**
   - Pastikan proses pemindahan berkas dilakukan melalui IDE atau text editor dengan ekstensi Flutter untuk memastikan refactoring yang benar.




## Tugas 7

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






