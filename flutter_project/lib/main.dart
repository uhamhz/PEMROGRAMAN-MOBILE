import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /* soal 1 */
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // soal 2
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Kebun Raya Bogor',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Bogor, Jawa Barat, Indonesia',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        /* soal 3 */
        const Icon(Icons.star, color: Colors.red),
        const SizedBox(width: 4),
        const Text('67'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    final Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    final Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Kebun Raya Bogor (KRB) atau Kebun Botani Bogor adalah sebuah kebun raya yang terletak di kota Bogor, Jawa Barat, Indonesia. Kebun ini didirikan pada tahun 1817 oleh Gubernur Jenderal Hindia Belanda, Baron van der Capellen. Kebun Raya Bogor memiliki luas sekitar 87 hektar dan merupakan salah satu kebun raya tertua di Asia Tenggara. Kebun ini memiliki koleksi tanaman yang sangat',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Muhammad Ammar Hafizh - 2341720074',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              'lib/assets/images/krb.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
