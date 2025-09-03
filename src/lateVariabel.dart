import 'dart:io';

void main() {
  late String username;

  print("=== Aplikasi Login ===");
  stdout.write("Masukkan username: ");
  username = stdin.readLineSync()!;

  print("Halo, $username! 👋 Selamat datang di aplikasi kami.");
}
