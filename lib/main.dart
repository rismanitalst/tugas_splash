import 'package:flutter/material.dart';
import 'package:tugas_splash/screen/splash_screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan Splash Screen Rismanita Lestari",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00008B)),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen1(),
    );
  }
}
