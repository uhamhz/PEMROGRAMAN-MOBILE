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

### 💡 Soal 2  
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

### 💡 Soal 4  
**Apa kegunaan method pada Langkah 11 dan 13 dalam lifecycle state?**

**🧠 Jawaban:**  

- **`initState()`**  
  Merupakan tahap pertama saat `State` baru dibuat.  
  Method ini dipanggil **sekali saja** sebelum widget pertama kali ditampilkan.  
  Biasanya digunakan untuk inisialisasi data atau proses awal.

- **`dispose()`**  
  Adalah tahap terakhir dari lifecycle widget.  
  Method ini dipanggil ketika widget **dihapus dari widget tree**, misalnya saat pindah halaman.  
  Fungsinya untuk membersihkan resource, seperti controller atau listener.

---

### ✅ Bukti Praktikum 1  
![Praktikum 1](lib/assets/images/prak1.gif)

---