import 'package:flutter/material.dart';
import 'splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SisterApp());
}

class SisterApp extends StatelessWidget {
  const SisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF83C77B);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SISTER',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8FAF8),
        colorScheme: ColorScheme.fromSeed(seedColor: green),
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
    );
  }
}
