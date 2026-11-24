import 'package:flutter/material.dart';

class PresensiScreen extends StatefulWidget {
  const PresensiScreen({super.key});

  @override
  State<PresensiScreen> createState() => _PresensiScreenState();
}

class _PresensiScreenState extends State<PresensiScreen> {
  bool adaFoto = false;
  bool sudahPresensi = false;
  bool izinKamera = false;
  bool izinLokasi = false;

  void ambilFoto() {
    setState(() {
      izinKamera = true;
      adaFoto = true;
    });
  }

  void presensi() {
    if (!adaFoto) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ambil foto dulu!')),
      );
      return;
    }

    setState(() {
      izinLokasi = true;
      sudahPresensi = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const Text(
              'Presensi Wajah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Icon(
              adaFoto ? Icons.person : Icons.face,
              size: 130,
              color: Colors.green,
            ),

            const SizedBox(height: 10),

            Text(
              adaFoto ? 'Foto berhasil diambil' : 'Belum ada foto',
            ),

            const SizedBox(height: 18),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: sudahPresensi ? null : ambilFoto,
                child: const Text('Ambil Foto'),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: sudahPresensi ? null : presensi,
                child: const Text('Gunakan Foto'),
              ),
            ),

            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Izin Akses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.camera_alt, color: Colors.green),
              title: const Text('Permission Kamera'),
              subtitle: Text(izinKamera ? 'Diizinkan (Simulasi)' : 'Belum diizinkan'),
            ),

            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.location_on, color: Colors.green),
              title: const Text('Permission Lokasi'),
              subtitle: Text(izinLokasi ? 'Diizinkan (Simulasi)' : 'Belum diizinkan'),
            ),

            const Divider(),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lokasi Presensi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.map, color: Colors.green),
              title: Text('Lokasi Sekolah'),
              subtitle: Text('Lokasi terdeteksi (Simulasi)'),
            ),

            const SizedBox(height: 15),

            if (sudahPresensi)
              const Column(
                children: [
                  Text(
                    'Presensi Berhasil',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Keterangan: Tepat Waktu'),
                ],
              ),
          ],
        ),
      ),
    );
  }
}