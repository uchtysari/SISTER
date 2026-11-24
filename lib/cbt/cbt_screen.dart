import 'package:flutter/material.dart';

class CbtScreen extends StatelessWidget {
  const CbtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            color: const Color(0xFF83C77B),
            child: const Text(
              'CBT',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/aset2.jpg',
            width: 220,
            height: 220,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          const Text(
            'CBT Segera Hadir!',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Fitur CBT sedang kami siapkan. Tunggu sebentar ya!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}