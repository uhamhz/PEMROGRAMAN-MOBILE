# 📝 Codelab 11 – Pemrograman Asynchronous

## 👤 Identitas
| Nama | NIM | Kelas |
|------|-----|--------|
| **Muhammad Ammar Hafizh** | 2341720074 | TI - 3F |

---

## 📌 Praktikum 1 – Mengunduh Data dari Web Service (API)

### 💡 Soal 1  
**Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.**

**🧠 Jawaban:**  
``` Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo - Ammar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
```
---

### 💡 Soal 2.1  
**Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.**

**🧠 Jawaban:**  
```  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/5HrrDwAAQBAJ';
    final Uri url = Uri.https(authority, path);
    return http.get(url);
  }
```
![Soal 2](lib/assets/images/soal2.png)  


### 💡 Soal 2.2  
**Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil.**

**🧠 Jawaban:**  
![Soal 2.2](lib/assets/images/soal3.png)

---

### 💡 Soal 3  
**Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!**

**🧠 Jawaban:**  

- **`substring`**  
  .substring(0, 450) → memotong teks tersebut mulai dari indeks ke-0 sampai ke-449, jadi hanya menampilkan 450 karakter pertama. Agar data yang ditampilkan ke layar tidak terlalu panjang (karena response JSON bisa sangat besar).
 Misalnya, kalau body berisi 10.000 karakter, hanya 450 karakter pertama yang diambil untuk pratinjau cepat.

- **`catchError`**  
  Menampilkan pesan 'An error occurred' agar pengguna tahu bahwa ada kegagalan saat memuat data.
 Pemanggilan setState() memastikan teks hasil (result) yang ditampilkan di UI ikut diperbarui.

---

### ✅ Bukti Praktikum 1  
![Praktikum 1](lib/assets/images/prak1.gif)

---