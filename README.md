# LAPORAN TUGAS UTS
Aplikasi Katalog Produk Sport (Active Life)

# IDENTITAS MAHASISWA
*Nama* : Zakqi Ramadhan
*NIM* : 230102129
*Kelas* : IF23B 
*Mata Kuliah* : Pemrograman Perangkat Bergerak
*Dosen Pengampu* :  1. Fajar Winata S.Kom., M.T.
                    2. Rizky Kharisma N. E. P. S.Tr.Kom., M.T. 
*Link GitHub*: 
*Email*: zakqiramadhan29@gmail.com

# DESKRIPSI APLIKASI
Katalog Produk Sport (Active Life) adalah aplikasi mobile berbasis Flutter yang menampilkan katalog produk olahraga (sepatu, jersey, aksesoris) dengan fitur keranjang belanja dan state management menggunakan Provider.

Aplikasi ini dibuat untuk memenuhi Tugas Besar UTS Pemrograman Perangkat Bergerak dengan spesifikasi utama fokus pada penguasaan sistem layout Flutter.

Implementasi 5 jenis layout (Dasar, Multi-Child, Kompleks, Scrollable, Responsif)
- 3 halaman utama wajib (Home Page, Detail Page, Cart Page)
- 3 custom widget yang reusable (ProductCard, FavButton, CartButton)
- ThemeData untuk konsistensi UI
- Struktur folder rapi dan terorganisir
- Responsive design menggunakan MediaQuery

# TEKNOLOGI YANG DIGUNAKAN
- Flutter SDK (Versi >=3.0.0): Berfungsi sebagai Framework Utama untuk membangun aplikasi mobile.

- Dart (Versi >=3.0.0): Berfungsi sebagai Bahasa Pemrograman inti yang digunakan.

- Provider (Versi ^6.1.1): Digunakan sebagai Package State Management untuk mengelola data Keranjang, Favorit, dan Filter secara efisien.

- Material Design 3 (Versi Terbaru): Digunakan sebagai Standar Komponen dan Pedoman UI aplikasi.

# STRUKTUR FOLDER PROJECT

active_life_sport_catalog/
├── lib/
│   ├── main.dart                 # Entry point dan konfigurasi sistem (orientasi, status bar)
│   ├── app.dart                  # Setup MultiProvider dan MaterialApp
│   ├── app_theme.dart            # Konfigurasi Tema (ColorScheme, AppBar, Button)
│   ├── product_model.dart        # Model Data Produk (Termasuk data dummy)
│   ├── providers/                # Logic Layer (State Management)
│   │   ├── cart_provider.dart    # Logic Keranjang, Hitungan Total Harga/Kuantitas
│   │   ├── favorite_provider.dart# Logic Whitelist/Favorit
│   │   └── product_provider.dart # Logic Filter & Data Produk
│   ├── screens/                  # View Layer (Halaman Aplikasi)
│   │   ├── cart.dart             # Halaman Keranjang Belanja (CART PAGE - REQUIREMENT)
│   │   ├── detail.dart           # Halaman Detail Produk (DETAIL PAGE - REQUIREMENT)
│   │   └── home_page.dart        # Halaman Utama/Katalog (HOME PAGE - REQUIREMENT)
│   └── widgets/                  # Komponen UI Reusable
│       ├── cart_button.dart      # Custom Widget: Tombol Cart dengan Badge
│       ├── fav_button.dart       # Custom Widget: Tombol Love/Favorit
│       └── product_card.dart     # Custom Widget: Kartu Produk (Untuk Grid/List)
├── pubspec.yaml                  # Dependencies
└── README.md                     # Dokumentasi

# IMPLEMENTASI 5 JENIS LAYOUT FLUTTER
1. Layout Dasar (Single Child)
    - Widget yang Digunakan: Container, Center, Padding, Align
    - Lokasi Implementasi:
        - Container digunakan di home_page.dart untuk Header Section dengan gradient background.
        - Padding digunakan secara konsisten di semua screen untuk jarak internal elemen.

2. Layout Multi-Child (Row/Column)
    - Widget yang Digunakan: Row, Column, Expanded, Spacer.
    - Lokasi Implementasi:
        - HomeScreen: Digunakan untuk menyusun View Toggle (Grid/List) dan Category Filter horizontal.
        - DetailScreen: Row digunakan di Bottom Bar untuk menempatkan tombol Tambah ke Keranjang.

3. Layout Kompleks
    - Widget yang Digunakan: Stack, Positioned.
    - Lokasi Implementasi:
        - DetailScreen: Stack digunakan untuk menumpuk gambar produk dengan tombol Back (Positioned), tombol Favorite (Positioned), dan rating badge.
        - ProductCard: Stack digunakan untuk menumpuk gambar dengan badge "Stok Menipis" dan Tombol Favorit.

4. Layout Scrollable
    - Widget yang Digunakan: ListView, GridView, SingleChildScrollView.
    - Lokasi Implementasi:
        - HomeScreen: Menggunakan SingleChildScrollView horizontal untuk Category Filter dan beralih antara GridView.builder dan ListView.builder untuk daftar produk.
        - DetailScreen: Dibungkus dalam SingleChildScrollView untuk menggulir konten.

5. Layout Responsif/Adaptif
    - Widget yang Digunakan: MediaQuery.
    - Lokasi Implementasi:
        - HomeScreen: Menggunakan MediaQuery.of(context).size.width untuk menentukan jumlah kolom di Grid View (2 kolom untuk mobile, 3 kolom untuk tablet/layar besar).
        - ProductCard: Menggunakan small screen check untuk menyesuaikan ukuran font agar tampilan tidak overflow di perangkat kecil.

# SPESIFIKASI HALAMAN
1. Home Page (lib/screens/home_page.dart)
    - Requirement: Home Page dan Grid Page (fungsionalitas Grid View) digabungkan.
    - Fitur Utama: Filter Kategori Dinamis, Tombol Toggle Grid/List View, dan Draggable Bottom Sheet untuk melihat produk favorit.

2. Detail Page (lib/screens/detail.dart)
    - Requirement: Stack untuk overlay dan SingleChildScrollView untuk scrolling. 
    - Fitur Utama: Validasi wajib pilih ukuran sebelum Add to Cart, feedback SnackBar, dan display Stok Produk.

3. Cart Page (lib/screens/cart.dart)
    - Requirement: Halaman keranjang.
    - Fitur Utama: Swipe-to-delete (Dismissible), Update Quantity, konfirmasi Clear Cart dengan Dialog, dan summary total harga.

# CUSTOM WIDGETS
Dibuat 3 Custom Widget

1. ProductCard (lib/widgets/product_card.dart)
    - Fungsi: Menampilkan produk dalam bentuk card yang mendukung tampilan Grid dan List. Layout Kunci: Stack, Column, dan logic adaptif untuk ukuran font.

2. FavButton (lib/widgets/fav_button.dart)
    - Fungsi: Tombol lingkaran yang terhubung langsung ke FavoriteProvider untuk toggle status favorit. Memberikan feedback SnackBar.

3. CartButton (lib/widgets/cart_button.dart)
    - Fungsi: Tombol keranjang di AppBar yang menampilkan badge kuantitas barang secara real-time dari CartProvider.

# FITUR TAMBAHAN
Fitur-fitur ini melengkapi fungsionalitas aplikasi di luar persyaratan layout dasar:

1. Smart SKU/Cart System:
    - Menggunakan Composite Key (product.id_size) di CartProvider untuk membedakan produk yang sama tetapi memiliki ukuran yang berbeda dalam keranjang (praktik e-commerce yang benar).

2. Rupiah Formatting:
    - Implementasi fungsi helper _formatPrice yang menggunakan RegEx untuk memformat harga menjadi format mata uang Rp dengan pemisah ribuan (.).

3. Visual Stock Indicator:
    - ProductCard menampilkan badge "Stok Menipis" jika stok kurang dari 10.

4. Provider State Management:
    - Seluruh state (Keranjang, Favorit, Filter Kategori) diurus oleh ChangeNotifier Providers yang diinisialisasi di root (app.dart).

# KONTAK
*Nama* : Zakqi Ramadhan 
*NIM* : 230102129 
*Kelas* : IF23B 
*Email* : zakqiramadhan29@gmail.com 
*GitHub* : http://github.com/zkq29 
