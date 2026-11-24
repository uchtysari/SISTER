import 'package:flutter/material.dart';

class LmsScreen extends StatelessWidget {
  const LmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            color: const Color(0xFF83C77B),
            child: const Row(
              children: [
                Icon(Icons.school, color: Colors.white, size: 38),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pembelajaran',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'SMK • Kelas • Semester',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Cari mata pelajaran...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _CountItem(value: '0', label: 'Mata Pelajaran'),
              _CountItem(value: '0', label: 'Materi'),
              _CountItem(value: '0', label: 'Tugas Aktif'),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Mata Pelajaran',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Belum ada mata pelajaran'),
            ),
          ),
        ],
      ),
    );
  }
}

class _CountItem extends StatelessWidget {
  final String value;
  final String label;

  const _CountItem({
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFF83C77B),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}