import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation Dialog Screen - Ammar')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            // Panggil fungsi tanpa argumen agar lebih bersih
            _showColorDialog();
          },
        ),
      ),
    );
  }

  // Menghilangkan 'BuildContext context' dari argumen karena sudah tersedia
  // di dalam State class, dan membuat fungsi mengembalikan nilai (Color?)
  void _showColorDialog() async {
    // 1. Tangkap hasil dari showDialog (yang dikembalikan oleh Navigator.pop)
    final newColor = await showDialog<Color>(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
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
          ],
        );
      },
    );

    // 2. Cek apakah ada warna yang dikembalikan (newColor tidak null)
    if (newColor != null) {
      // 3. Perbarui state dan gunakan warna yang baru
      setState(() {
        color = newColor;
      });
    }
    // Catatan: setState() yang kosong di akhir kode asli dihapus/digantikan
  }
}
