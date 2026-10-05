import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const ReceitasApp());
}

/// Raiz do aplicativo. Define tema e tela inicial.
class ReceitasApp extends StatelessWidget {
  const ReceitasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receitas Favoritas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
