import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("lib/assets/logo_polinema.jpg"),
      width: 250,
      height: 250,
      fit: BoxFit.contain,
    );
  }
}
