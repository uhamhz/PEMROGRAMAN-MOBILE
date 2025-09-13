void main() {
  String nama = "Muhammad Ammar Hafizh";
  String nim = "2341720074";

  print("Bilangan Prima dari 0 sampai 201:\n");

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i --> $nama | $nim");
    }
  }
}

bool isPrima(int angka) {
  if (angka < 2) return false; // 0 dan 1 bukan bilangan prima
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}
