# inventory_pbp


## Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, bisa. Pengambilan data JSON tanpa membuat model terlebih dahulu adalah mungkin dilakukan. Hal ini sering terjadi dalam pengembangan aplikasi yang memanfaatkan data dari API untuk ditampilkan ke pengguna.

Model biasanya merujuk pada struktur data yang telah didefinisikan sebelumnya untuk mengatur atau memformat data yang diambil dari JSON. Model membantu memastikan bahwa data yang diterima sesuai dengan harapan. Membuat atau tidak membuat model sebelum pengambilan data JSON bergantung pada kebutuhan proyek:

1. **Tanpa Model Terlebih Dahulu:** Pengambilan data langsung dari JSON bisa dilakukan tanpa pembuatan model. Ini bisa lebih cepat dalam pengembangan prototipe atau jika data yang diambil sederhana dan tidak memerlukan manipulasi yang rumit. Pengambilan data langsung memungkinkan fleksibilitas dalam menangani respons API yang berbeda.
   
2. **Membuat Model Terlebih Dahulu:** Pembuatan model sebelumnya membantu memastikan bahwa data yang diambil memiliki struktur yang diharapkan. Ini berguna dalam memvalidasi dan memformat data secara konsisten. Jika aplikasi memerlukan pengolahan data yang kompleks atau data yang memiliki struktur yang sangat terdefinisi, membuat model dapat menjadi pendekatan yang lebih baik untuk memastikan konsistensi dan keamanan data.


## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` dalam konteks Flutter mungkin merujuk pada objek yang digunakan untuk mengelola atau memanipulasi cookie dalam koneksi jaringan atau permintaan HTTP. Instance `CookieRequest` perlu dibagikan ke semua komponen di aplikasi Flutter karena:

1. **Konsistensi Pengelolaan Cookie:** Memiliki satu instance `CookieRequest` yang dibagikan ke semua komponen memastikan bahwa pengelolaan cookie dilakukan secara konsisten di seluruh aplikasi. Ini memungkinkan untuk menyimpan, menghapus, atau memanipulasi cookie dengan cara yang seragam.

2. **Sinkronisasi Data**: Dengan menggunakan instance yang sama, informasi cookie dapat disinkronkan dengan benar di berbagai bagian aplikasi. Hal ini penting terutama jika ada lebih dari satu komponen yang perlu mengakses atau memodifikasi cookie yang sama.

3. **Pemeliharaan State Global**: Dalam beberapa kasus, terutama pada aplikasi yang kompleks, memiliki satu instance `CookieRequest` yang dapat diakses dari berbagai komponen memungkinkan pemeliharaan state global yang berkaitan dengan cookie. Ini memudahkan manajemen data yang berhubungan dengan autentikasi, preferensi pengguna, atau informasi lain yang disimpan dalam cookie.

4. **Kemudahan Pengembangan dan Pemeliharaan:** Dengan menggunakan instance yang sama, memodifikasi atau memperbarui perilaku terkait cookie hanya perlu dilakukan pada satu titik. Ini dapat menyederhanakan pengembangan dan pemeliharaan aplikasi karena perubahan yang diperlukan hanya dilakukan pada satu objek.

5. **Efisiensi Memori dan Kinerja**: Menggunakan satu instance yang dibagikan dapat menghindari alokasi memori berulang untuk objek yang sama. Ini dapat meningkatkan efisiensi memori dan kinerja aplikasi.


## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Terdapat beberapa langkah pengambilan data dari JSON untuk ditampilkan pada Flutter:

### Langkah 1: Pengambilan Data JSON
1. **Mengambil Data dari Sumber Eksternal:** Biasanya, data JSON diambil dari API web atau server eksternal. Ini bisa dilakukan menggunakan paket Flutter seperti `http` atau `dio` untuk membuat permintaan HTTP ke endpoint yang menyediakan data dalam format JSON.

### Langkah 2: Parsing Data JSON
2. **Parsing Data JSON:** Setelah data JSON diterima, langkah selanjutnya adalah mem-parsing (mengubah) data tersebut menjadi objek Dart yang dapat digunakan di dalam aplikasi Flutter. Paket `dart:convert` biasanya digunakan untuk melakukan ini dengan fungsi `jsonDecode()`. Ini akan mengubah string JSON menjadi struktur data Dart, seperti `Map` atau `List` yang dapat diakses.

### Langkah 3: Memproses dan Memanipulasi Data
3. **Memproses Data:** Setelah parsing, kamu dapat melakukan manipulasi data sesuai kebutuhan aplikasi. Ini bisa termasuk filter data, transformasi, atau pengurutan sebelum menampilkan.

### Langkah 4: Menampilkan Data di Flutter
4. **Menggunakan Widget untuk Tampilan:** Data yang telah diproses kemudian dapat digunakan dalam widget Flutter untuk ditampilkan kepada pengguna.
   
   - **ListViews atau GridViews:** Jika data dalam bentuk daftar atau grid, kamu dapat menggunakan `ListView` atau `GridView` dan membangun item-widget dari data yang diambil dari JSON.
   
   - **Custom Widgets:** Kamu juga dapat membuat widget kustom yang menggunakan data dari JSON untuk menampilkan informasi yang spesifik. Misalnya, menggunakan data untuk mengisi teks dalam `Text` widget atau gambar dalam `Image` widget.


## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Mekanisme autentikasi dari input data akun pada Flutter ke Django hingga tampilnya menu pada Flutter melibatkan beberapa langkah:

### Langkah 1: Autentikasi dari Flutter ke Django
1. **Input Data Akun di Flutter:** Pengguna memasukkan informasi akun seperti nama pengguna dan kata sandi ke dalam aplikasi Flutter.
   
2. **Permintaan Autentikasi ke Django:** Aplikasi Flutter menggunakan paket seperti `http` untuk membuat permintaan HTTP ke endpoint autentikasi yang ada di Django, mengirimkan informasi akun yang dimasukkan pengguna dalam permintaan, misalnya, metode POST ke API autentikasi Django.

3. **Validasi di Django:** Django menerima permintaan autentikasi, memvalidasi informasi akun yang diterima, dan memeriksa kebenaran kombinasi nama pengguna dan kata sandi yang diberikan.

4. **Generasi Token (Opsional):** Jika autentikasi berhasil, Django dapat menghasilkan token akses atau sesi yang akan digunakan oleh Flutter untuk mengakses endpoint yang terproteksi pada masa mendatang.

### Langkah 2: Pengiriman Respon Autentikasi ke Flutter
5. **Respon Autentikasi dari Django:** Django mengirimkan respon ke aplikasi Flutter berisi informasi bahwa autentikasi berhasil. Ini bisa berupa pesan sukses dan token (jika digunakan).

### Langkah 3: Tampilan Menu pada Flutter
6. **Tampilan Menu:** Setelah menerima respon autentikasi yang berhasil dari Django, aplikasi Flutter mengonfirmasi ke pengguna bahwa mereka berhasil masuk dan beralih tampilan ke menu atau layar yang sesuai setelah autentikasi berhasil.
   
   - **Navigasi ke Layar Menu:** Pengguna dapat dialihkan ke layar menu menggunakan widget seperti `Navigator` dalam Flutter setelah menerima konfirmasi autentikasi yang berhasil.


## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- MaterialApp: adalah widget utama dalam Flutter yang memberikan konfigurasi dasar seperti judul aplikasi, tema, dan routing ke halaman utama. Ini berfungsi sebagai kerangka utama dalam pembangunan aplikasi Flutter.

- TextField adalah widget input teks yang memungkinkan pengguna memasukkan teks, seperti kata sandi pada halaman login.

- Scaffold menyediakan struktur dasar halaman dengan komponen seperti appBar, body, dan drawer. Biasanya digunakan sebagai kerangka halaman utama atau halaman terpisah dalam aplikasi.

- FutureBuilder mempermudah penanganan data masa depan, digunakan untuk menampilkan data yang akan diperoleh dari pengumpulan data ke server atau sumber lainnya.

- ListView.builder adalah widget untuk menampilkan daftar data dalam bentuk daftar yang dapat digulir, berguna untuk menampilkan daftar produk atau informasi secara dinamis.

- AppBar merupakan bagian yang menampilkan bar navigasi di bagian atas halaman dengan judul halaman, tombol kembali, dan aksi-aksi lainnya.

- Drawer adalah widget yang menampilkan panel navigasi yang bisa ditarik dari sisi layar, sering digunakan untuk menu atau navigasi dalam aplikasi.

- ElevatedButton adalah tombol yang, ketika ditekan, memulai tindakan seperti proses login atau aksi lainnya.

- Provider: adalah sebuah widget yang memungkinkan manajemen state dan penyediaan objek ke semua bagian aplikasi. Dalam konteks tertentu, instance CookieRequest disediakan ke semua child widgets melalui Provider.

- Column adalah widget yang mengatur anak widget dalam satu kolom, berguna untuk menyusun tampilan secara vertikal.

- SnackBar adalah fitur yang menampilkan pesan singkat kepada pengguna, umumnya untuk memberikan umpan balik setelah tindakan tertentu seperti login berhasil/gagal atau penambahan produk berhasil/gagal.

- AlertDialog adalah widget yang menampilkan dialog dan memberi pengguna opsi seperti konfirmasi atau pesan peringatan.

- Text adalah widget untuk menampilkan informasi seperti nama produk, harga, deskripsi, dan pesan dalam aplikasi.

- MaterialPageRoute digunakan untuk menghubungkan aplikasi antara halaman.


 
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
### Setup Autentikasi pada Django untuk Flutter
1. **Buat Django-app "authentication" dan tambahkan ke `INSTALLED_APPS`.
2. Instal `django-cors-headers` untuk manajemen CORS.
3. Aktifkan dan atur `corsheaders` pada settings.py.
4. Tentukan variabel seperti `CORS_ALLOW_ALL_ORIGINS`, `CORS_ALLOW_CREDENTIALS`, dan lainnya pada settings.py.
5. Buat view untuk login pada `authentication/views.py`.
6. Tambahkan URL routing untuk fungsi login dalam `authentication/urls.py`.
7. Tambahkan rute authentication ke `urls.py` utama dalam proyek Django.

### Integrasi Sistem Autentikasi pada Flutter
1. Pasang package `provider` dan `pbp_django_auth` untuk melakukan operasi GET dan POST terhadap web service Django.
2. Gunakan Provider untuk membagikan instance CookieRequest ke semua komponen dalam aplikasi Flutter.
3. Buat halaman login.dart untuk menangani proses autentikasi dalam aplikasi Flutter.
4. Tautkan halaman login ke dalam aplikasi utama dan ganti home: LoginPage().
5. Jalankan aplikasi Flutter dan lakukan uji coba login.

### Pembuatan Model Kustom
1. Gunakan website Quicktype untuk menghasilkan model yang sesuai dengan struktur data JSON.
2. Buat file model Dart berdasarkan hasil dari Quicktype.

### Penerapan Fetch Data dari Django Untuk Ditampilkan ke Flutter
1. Tambahkan dependensi HTTP dengan package `http` pada aplikasi Flutter.
2. Buat halaman list_product.dart untuk menampilkan data produk dari Django ke dalam aplikasi Flutter.
3. Tambahkan halaman Produk ke dalam navigasi aplikasi melalui left_drawer.dart.
4. Tambahkan fitur fetch data produk dari Django ke aplikasi Flutter.

### Implementasi Fitur Logout
1. Tambahkan fungsi view untuk logout pada `authentication/views.py`.
2. Tambahkan URL routing untuk fungsi logout dalam `authentication/urls.py`.
3. Tambahkan fungsi logout ke aplikasi Flutter dan lakukan integrasi dengan tombol logout pada aplikasi.




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






