# 📝 Codelab 07 - Plugins

## 👤 Identitas
- **Nama**  : Muhammad Ammar Hafizh  
- **NIM**   : 2341720074  
- **Kelas** : TI - 3F  

---

# 📌 Praktikum 1 – Menerapkan Plugin di Project Flutter

### ✅ Langkah 1
![Langkah 1](lib/assets/images/langkah1.png)

### Penjelasan Langkah 1
pada langkah 1 kita akan mendownload plugin auto_size_text dengan menggunakan command flutter pub add auto_size_text

### ✅ Langkah 2
![Langkah 2](lib/assets/images/langkah2.png)

### Penjelasan Langkah 2
pada langkah 2 kita membuat widget class baru yang bernama red_text_widget

### ✅ Langkah 3
![Langkah 3](lib/assets/images/langkah3.png)

### Penjelasan Langkah 2
pada langkah 3 menambah widget auto_size_text pada red_text_widget dan itu masih error dikarenakan belum mengimport plugin ke dalam widget yang kita mau

### Perbaikan
![Perbaikan](lib/assets/images/langkah4.png)

### ✅ Langkah 4
![Langkah 4](lib/assets/images/langkah5.png)

### Penjelasan Langkah 2
pada langkah 4 kita menambah variabel text dan parameter di constructor red_text_widget

### ✅ Langkah 5
![Langkah 5](lib/assets/images/langkah6.png)

### Penjelasan Langkah 2
pada langkah 5 kita menambahkan container untuk red_text_widget di main dart dan hasil kode yang kita buat ada pada screenshot di atas

# 📌 Tugas

### ✅ Pertanyaan 1
![Langkah 1](lib/assets/images/langkah1.png)

### Penjelasan Pertanyaan 1
pada command flutter pub add auto_size_text di terminal berarti kita baru saja menambahkan plugin auto_size_text ke dalam framework dan otomatis pubsec.yaml dll akan mengkonfigurasi itu agar bekerja dengan baik.

### ✅ Pertanyaan 2
![Langkah 1](lib/assets/images/langkah5.png)

### Penjelasan Pertanyaan 2
penambahan variabel text dan contructor pada widget red_text_widget dan final yang berarti variabel text harus punya nilai dan nilainya tetap.

### ✅ Pertanyaan 3
![Langkah 1](lib/assets/images/langkah6.png)

### Penjelasan Pertanyaan 3
perbedaan 2 container pada child class _MyHomePageState adalah lebar dan warnanya.

### ✅ Pertanyaan 4

### Penjelasan Pertanyaan 4
| Parameter               | Penjelasan                                                                         | Catatan                                                                        |
| ----------------------- | ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| **key**                 | Mengontrol bagaimana widget ini menggantikan widget lain di tree.                  | Sama seperti `Key` pada widget biasa.                                          |
| **textKey**             | Menetapkan *key* khusus untuk widget `Text` di dalamnya.                           | Digunakan jika perlu identifikasi `Text` internal.                             |
| **style**               | Menentukan gaya teks seperti font, warna, ketebalan, dll.                          | Sama seperti parameter `style` di widget `Text`.                               |
| **minFontSize**         | Ukuran huruf minimum saat disesuaikan agar muat di layout.                         | Jika teks masih overflow pada ukuran ini, akan mengikuti `overflow`.           |
| **maxFontSize**         | Ukuran huruf maksimum.                                                             | Mencegah teks menjadi terlalu besar.                                           |
| **stepGranularity**     | Besaran langkah saat ukuran huruf dikurangi untuk menyesuaikan ruang.              | Semakin kecil nilainya → semakin halus penyesuaiannya.                         |
| **presetFontSizes**     | Daftar ukuran font yang sudah ditentukan.                                          | Jika digunakan, `minFontSize`, `maxFontSize`, dan `stepGranularity` diabaikan. |
| **group**               | Mengelompokkan beberapa `AutoSizeText` agar semua memiliki ukuran huruf yang sama. | Cocok untuk tampilan tabel atau grid.                                          |
| **textAlign**           | Menentukan perataan teks secara horizontal.                                        | Sama seperti `TextAlign` pada `Text`.                                          |
| **textDirection**       | Menentukan arah penulisan (LTR/RTL).                                               | Mengatur interpretasi `TextAlign.start` dan `TextAlign.end`.                   |
| **locale**              | Menentukan lokalisasi yang digunakan dalam rendering font.                         | Berguna untuk karakter yang berbeda antar bahasa.                              |
| **softWrap**            | Apakah teks boleh memecah baris di titik “soft break”.                             | Default: `true`.                                                               |
| **wrapWords**           | Apakah kata yang panjang boleh dipotong dan dibungkus ke baris baru.               | Default: `true`.                                                               |
| **overflow**            | Menentukan perilaku ketika teks meluap dari batas.                                 | Contoh: `TextOverflow.ellipsis`.                                               |
| **overflowReplacement** | Widget pengganti ketika teks tidak bisa disusutkan agar muat.                      | Misalnya, bisa ganti dengan `Text("Teks terlalu panjang")`.                    |
| **textScaleFactor**     | Faktor skala teks terhadap ukuran font dasar.                                      | Mempengaruhi semua ukuran font.                                                |
| **maxLines**            | Jumlah maksimum baris yang boleh ditampilkan.                                      | Jika lebih, teks disusutkan atau di-ellipsis.                                  |
| **semanticsLabel**      | Label alternatif untuk keperluan aksesibilitas.                                    | Dibaca oleh *screen reader*.                                                   |
