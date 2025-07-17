import 'package:demo/screens/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BeitbridgeCrusadeApp());

class BeitbridgeCrusadeApp extends StatelessWidget {
  const BeitbridgeCrusadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'United',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const SplashScreen(),
    );
  }
}