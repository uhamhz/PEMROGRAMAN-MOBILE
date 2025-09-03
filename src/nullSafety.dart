void main() {
  String? nama;
  print("Nama: $nama");
  if (nama != null) {
    print("Panjang nama: ${nama.length}");
  } else {
    print("Nama belum diisi");
  }
}
