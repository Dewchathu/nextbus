import 'package:flutter/material.dart';
import 'package:nextbus/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NextBus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFBA9BC9)),
        useMaterial3: true,
      ),
      home: const SplashScreen()
    );
  }
}