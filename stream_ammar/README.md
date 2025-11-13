# 📝 Codelab 12 – State Management dengan Streams

## 👤 Identitas
| Nama | NIM | Kelas |
|------|-----|--------|
| **Muhammad Ammar Hafizh** | 2341720074 | TI - 3F |

---

## 📌 Praktikum 1 – Dart Streams

### 💡 Soal 1  
**Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.**

**🧠 Jawaban:**  
``` 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ammar',
```
---

### 💡 Soal 1.2
**Gantilah warna tema aplikasi sesuai kesukaan Anda.**

**🧠 Jawaban:**  
```  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ammar',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const StreamHomePage(),
    );
  }
}
```
---

### 💡 Soal 2  
**Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.**

**🧠 Jawaban:**  
```  
import 'package:flutter/material.dart';

class ColorStream{
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.cyan,
    Colors.teal,
  ];
}
```
---

### 💡 Soal 3  
**Jelaskan fungsi keyword yield* pada kode tersebut!**

**🧠 Jawaban:**  

yield* berfungsi untuk meneruskan semua event dari Stream.periodic() ke dalam getColors(),
sehingga setiap detik fungsi ini akan “memancarkan” warna baru ke subscriber yang mendengarkan stream tersebut.

---

### 💡 Soal 3.2  
**Apa maksud isi perintah kode tersebut?**

**🧠 Jawaban:**  

Kode tersebut membuat stream yang memancarkan warna dari daftar colors, berubah setiap 1 detik, dan terus berulang tanpa henti.

---

### 💡 Soal 4  
**Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 1  
![Praktikum 1](lib/assets/gif/prak1.gif)

---
### 💡 Soal 5  
**Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !**

**🧠 Jawaban:**  

- **`Listen`**  
   Stream akan mengirimkan warna setiap detik, dan callback ini akan dipanggil setiap kali ada event baru.
   Namun, kode setelah listen() langsung lanjut jalan tanpa menunggu semua event selesai.

- **`Await`**  
   program menunggu setiap event stream secara berurutan, baru lanjut ke iterasi berikutnya.
   Biasanya dipakai di fungsi async ketika kamu ingin mengontrol urutan eksekusi atau menunggu sampai stream selesai sepenuhnya.


---

## 📌 Praktikum 2 – Stream controllers dan sinks
### 💡 Soal 6
**Jelaskan maksud kode langkah 8 dan 10 tersebut!**

**🧠 Jawaban:**  

- **`initState()`**  
   Kode initState() ini membuat stream listener yang selalu memantau data baru dari NumberStream.
   Setiap kali ada angka baru dikirim ke stream, nilai lastNumber akan berubah dan UI diperbarui secara otomatis.

- **`addRandomNumber()`**  
   Fungsi addRandomNumber() adalah pengirim data (input).
   Fungsi ini men-generate angka acak dan mengirimkannya ke stream,
   sementara initState() tadi adalah penerima data (listener) yang menampilkan hasilnya di UI.

---
### 💡 Soal 6.2  
**Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 2  
![Praktikum 2](lib/assets/gif/prak1.gif)

---

### 💡 Soal 7
**Jelaskan maksud kode langkah 13 sampai 15 tersebut!**

**🧠 Jawaban:**  

- **`Langkah 13`**  
   addError() digunakan untuk mensimulasikan kondisi error dalam aliran data stream.

- **`Langkah 14`**  
   stream.listen(...) digunakan untuk mendengarkan data baru yang dikirim ke stream.
   bagian (event) berisi data hasil add() dari StreamController.

- **`Langkah 15`**  
   Dua baris pertama dikomentari karena tidak lagi mengirim data acak.
   Diganti dengan pemanggilan numberStream.addError() yang dibuat pada langkah 13.

---

### 💡 Soal 7.2  
**Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.**

**🧠 Jawaban:**  
```  
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
    // numberStream.addError();
  }
```

## 📌 Praktikum 3 – Injeksi data ke streams

### 💡 Soal 8  
**Jelaskan maksud kode langkah 1-3 tersebut!**

**🧠 Jawaban:**  

- **`Langkah 1`**  
   Variabel ini digunakan untuk menyimpan logika transformasi data stream. StreamTransformer adalah objek di Dart yang berfungsi untuk memodifikasi data yang lewat di dalam stream, sebelum data diterima oleh listen(), data tersebut akan diubah terlebih dahulu oleh transformer sesuai logika yang kita buat nanti.

- **`Langkah 2`**  
   StreamTransformer ini berfungsi sebagai filter atau pipa pengubah data/error sebelum data dikonsumsi oleh UI.

- **`Langkah 3`**  
   Nilai hasil transformasi diterima di listen() dan disimpan ke variabel lastNumber untuk ditampilkan di UI.

---

### 💡 Soal 8.2  
**Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 3  
![Praktikum 3](lib/assets/gif/prak3.gif)

---

## 📌 Praktikum 4 – Subscribe ke stream events

### 💡 Soal 9  
**Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!**

**🧠 Jawaban:**  

- **`Langkah 2`**  
   Kode ini menghubungkan aliran data (stream) dengan tampilan (UI) agar setiap angka baru yang dikirim ke stream langsung muncul di layar.

- **`Langkah 6`**  
   subscription.cancel() = berhenti mendengarkan data dari stream agar aman dan efisien.

- **`Langkah 8`**  
   Fungsi ini mencoba mengirim angka acak ke stream.
   Kalau stream masih hidup maka kirim angka ke UI.
   Kalau stream sudah mati maka tampilkan -1 di layar sebagai tanda error.

---

### 💡 Soal 9.2  
**Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 4 
![Praktikum 4](lib/assets/gif/prak4.gif)

---

## 📌 Praktikum 5 – Multiple stream subscriptions

### 💡 Soal 10  
**Jelaskan mengapa error itu bisa terjadi ?**

**🧠 Jawaban:**  
error itu muncul karena stream single-subscription sedang di-listen lebih dari sekali. Pastikan hanya satu listen aktif untuk stream tersebut, atau jadikan stream broadcast jika ingin multi-listener. Kalau kamu mau, aku bisa ubah NumberStream jadi broadcast atau migasi ke StreamBuilder untuk UI supaya tidak ada listen ganda secara tidak sengaja.

---

### 💡 Soal 11 
**Jelaskan mengapa hal itu bisa terjadi ?**

**🧠 Jawaban:**  
duplikasi terjadi karena ada dua listen pada stream yang sama, dan keduanya menambah values.

---

### 💡 Soal 11.2  
**Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 5 
![Praktikum 5](lib/assets/gif/prak5.gif)

---

## 📌 Praktikum 6 – StreamBuilder

### 💡 Soal 12  
**Jelaskan maksud kode pada langkah 3 dan 7 !**

**🧠 Jawaban:**  

- **`Langkah 3`**  
   Menghasilkan aliran (Stream<int>) angka acak 0–9 setiap 1 detik, tanpa henti, Stream.periodic(Duration(seconds: 1), …) memanggil callback tiap detik. Parameter t adalah hitungan tick (0,1,2,…) namun tidak dipakai. Callback mengembalikan random.nextInt(10) yang menghasilkan angka 0–9.

- **`Langkah 7`**  
   Mendengarkan numberStream dan me-render ulang UI setiap kali stream mengirim nilai baru.

---

### 💡 Soal 12.2
**Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 6
![Praktikum 6](lib/assets/gif/prak6.gif)

---

## 📌 Praktikum 7 – Manajemen Future dengan FutureBuilder

### 💡 Soal 1  
**Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?**

**🧠 Jawaban:**  
  tidak ada perbedaan UI namun hasil UI saja yang berbeda seperti yang sebelumnya loading lebih cepat sekarang 3 detik (lebih lama) dan sekarang position null tidak ada titik kordinat

### ✅ Bukti Praktikum 7.1
![Praktikum 7.1](lib/assets/gif/prak7.1.gif)

### 💡 Soal 2  
**Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?**

**🧠 Jawaban:**  
  Perbedaan UI hanya pada handle error saja sekarang menampilkan pesan ke aplikasi bukan null saja

### ✅ Bukti Praktikum 7.2
![Praktikum 7.2](lib/assets/gif/prak7.2.gif)

---

## 📌 Praktikum 8 – Navigation route dengan Future Function

### 💡 Soal 1  
**Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.**

**🧠 Jawaban:**  
```     
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation First Screen - Ammar')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _navigateAndGetColor(context);
          },
        ),
      ),
    );
  }

```

### 💡 Soal 2  
**Silakan ganti dengan warna tema favorit Anda.**

**🧠 Jawaban:**  
```    
class _NavigationFirstState extends     State<NavigationFirst> {
  Color color = const Color.fromARGB(255, 159, 57, 255);

```

### 💡 Soal 3  
**Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?**

**🧠 Jawaban:**  
   warna screen (background) akan berubah sesuai warna yang dipilih dan yang telah disediakan

### 💡 Soal 4  
**Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!**

**🧠 Jawaban:**  
```    
ElevatedButton(
              child: const Text('Green'),
              onPressed: () {
                color = const Color.fromARGB(255, 140, 217, 25);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Blue'),
              onPressed: () {
                color = const Color.fromARGB(255, 67, 8, 229);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Red'),
              onPressed: () {
                color = const Color.fromARGB(255, 180, 15, 15);
                Navigator.pop(context, color);
              },
            ),

```

### ✅ Bukti Praktikum 8
![Praktikum 8](lib/assets/gif/prak8.gif)

---

## 📌 Praktikum 9 – Memanfaatkan async/await dengan Widget Dialog

### 💡 Soal 1  
**Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?**

**🧠 Jawaban:**  
  Masih ada error ui atau background tidak berganti warna dikarenakan variabel state tidak diperbarui meskipun memanggil setState({}) di akhir fungsi _showColorDialog, tidak memberi tahu setState nilai baru apa yang harus digunakan. variabel state color (this.color) tetap menggunakan nilai lamanya.

### 💡 Soal 2  
**Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!**

**🧠 Jawaban:**  
``` 
  TextButton(
              child: const Text('Pink'),
              onPressed: () {
                final selectedColor = const Color.fromARGB(255, 215, 48, 227);
                Navigator.pop(context, selectedColor);
              },
            ),
            TextButton(
              child: const Text('Green'),
              onPressed: () {
                final selectedColor = const Color.fromARGB(255, 0, 128, 0);
                Navigator.pop(context, selectedColor);
              },
            ),
            TextButton(
              child: const Text('Black'),
              onPressed: () {
                final selectedColor = const Color.fromARGB(255, 0, 0, 0);
                Navigator.pop(context, selectedColor);
              },
            ),
```


### ✅ Bukti Praktikum 9
![Praktikum 9](lib/assets/gif/prak9.gif)

---
