import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PresensiScreen extends StatelessWidget {
  const PresensiScreen({super.key});

  Future<void> ambilFoto(BuildContext context) async {
    final ImagePicker picker = ImagePicker();

    final XFile? foto = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (foto == null || !context.mounted) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PreviewPresensiScreen(
          imagePath: foto.path,
          onRetake: () => ambilFoto(context),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF6D9),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.camera_alt,
                size: 100,
                color: Color(0xFF62A85B),
              ),

              const SizedBox(height: 25),

              const Text(
                'Presensi Wajah',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Silakan lakukan presensi dengan wajah Anda.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () => ambilFoto(context),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8BCB7F),
                    foregroundColor: Colors.white,
                  ),

                  child: const Text(
                    'Mulai Presensi',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// HALAMAN PREVIEW FOTO
class PreviewPresensiScreen extends StatelessWidget {
  final String imagePath;
  final VoidCallback onRetake;

  const PreviewPresensiScreen({
    super.key,
    required this.imagePath,
    required this.onRetake,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF6D9),

      appBar: AppBar(
        title: const Text('Pratinjau Foto'),
        backgroundColor: const Color(0xFFDDF6D9),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.file(
                  File(imagePath),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onRetake();
                    },
                    child: const Text('Ambil Ulang'),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const PresensiBerhasilScreen(),
                        ),
                      );
                    },
                    child: const Text('Gunakan'),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

// HALAMAN ABSENSI BERHASIL
class PresensiBerhasilScreen extends StatelessWidget {
  const PresensiBerhasilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF6D9),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.check_circle,
              size: 100,
              color: Color(0xFF62A85B),
            ),

            const SizedBox(height: 20),

            const Text(
              'Absensi Berhasil!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text('Presensi kamu berhasil dilakukan.'),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                  context,
                  (route) => route.isFirst,
                );
              },
              child: const Text('Kembali ke Home'),
            ),

          ],
        ),
      ),
    );
  }
}