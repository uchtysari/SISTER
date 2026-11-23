import 'package:flutter/material.dart';

class CbtScreen extends StatelessWidget {
  const CbtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF6D9),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.assignment,
              size: 90,
              color: Color(0xFF62A85B),
            ),

            const SizedBox(height: 20),

            const Text(
              'CBT',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Segera Hadir',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

          ],
        ),
      ),
    );
  }
}