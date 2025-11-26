# 📝 Codelab 14 – RESTful API
## 👤 Identitas
| Nama | NIM | Kelas |
|------|-----|--------|
| **Muhammad Ammar Hafizh** | 2341720074 | TI - 3F |

---

## 📌 Praktikum 1 – Membuat layanan Mock API

### 💡 Soal 1  
**Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.**

**🧠 Jawaban:**  
``` 
return Scaffold(
      appBar: AppBar(title: const Text('JSON and HTTP Demo - Ammar')),
      body: FutureBuilder(
```
---

### 💡 Soal 1.2
**Gantilah warna tema aplikasi sesuai kesukaan Anda.**

**🧠 Jawaban:**  
```  
Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo - Ammar',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(),
    );
  }
```
---

### 💡 Soal 1.3  
**Masukkan hasil capture layar ke laporan praktikum Anda.**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 1  
![Soal 1](lib/assets/images/W14/Soal1.png)

---
## 📌 Praktikum 2 – Mengirim Data ke Web Service (POST)

### 💡 Soal 2  
**Tambahkan field baru dalam JSON maupun POST ke Wiremock!**

**🧠 Jawaban:**  

```  
const keyId = 'id';
const keyName = 'pizzaName';
const keyDescription = 'description';
const keyPrice = 'price';
const keyImage = 'imageUrl';
const keyCategory = 'category'; #BARU
```

---

### 💡 Soal 2.2  
**Capture hasil aplikasi Anda berupa GIF di README**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 2  
![Soal 2](lib/assets/images/W14/Soal2.gif)

---
## 📌 Praktikum 3 – Memperbarui Data di Web Service (PUT)

### 💡 Soal 3  
**Ubah salah satu data dengan Nama dan NIM Anda, lalu perhatikan hasilnya di Wiremock**

**🧠 Jawaban:**  

```  
{"id":2341720074,"pizzaName":"Ammar","description":"Pizza with tomato, garlic and anchovies","price":9.5,"imageUrl":"images/marinara.png","category":""}
```

### ✅ Wiremock  
![Wiremock](lib/assets/images/W14/Soal3.png)

---
### 💡 Soal 3.2  
**Capture hasil aplikasi Anda berupa GIF**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 3  
![Soal 3.2](lib/assets/images/W14/Soal3.gif)

---

## 📌 Praktikum 4 – Menghapus Data dari Web Service (DELETE)

### 💡 Soal 4
**Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**

**🧠 Jawaban:**  

### ✅ Bukti Praktikum 4  
![Soal 4](lib/assets/images/W14/Soal4.gif)

---