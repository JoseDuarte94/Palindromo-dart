import 'package:flutter/material.dart';
import 'package:palindromo/Screen/Pantalla_alindromo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palindromo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PantallaAlindromo(),
    );
  }
}
