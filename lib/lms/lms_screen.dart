import 'package:flutter/material.dart';

class LmsScreen extends StatelessWidget {
  const LmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF6D9),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                'Pembelajaran',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'SMK Digital • XI RPL • Semester Ganjil',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 25),

              // Pencarian
              TextField(
                decoration: InputDecoration(
                  hintText: 'Cari mata pelajaran...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Informasi jumlah
              Row(
                children: [

                  Expanded(
                    child: infoCard('Mata Pelajaran', '0'),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: infoCard('Materi', '0'),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: infoCard('Tugas', '0'),
                  ),

                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'Daftar Mata Pelajaran',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Daftar mata pelajaran sengaja dikosongkan

            ],
          ),
        ),
      ),
    );
  }

  // Kartu informasi
  Widget infoCard(String judul, String jumlah) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 8,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        children: [

          Text(
            jumlah,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            judul,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),

        ],
      ),
    );
  }
}