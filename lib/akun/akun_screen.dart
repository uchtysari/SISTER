import 'package:flutter/material.dart';

class AkunScreen extends StatelessWidget {
  const AkunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF6D9),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 45),

              const Text(
                'Akun Saya',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // Profil siswa
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Column(
                  children: [

                    CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        size: 45,
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      'Nama Siswa',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text('XI RPL'),
                    Text('SMK Digital'),

                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Rekap kehadiran
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'Rekap Kehadiran',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text('Hadir: 0'),
                    Text('Sakit: 0'),
                    Text('Izin: 0'),
                    Text('Alpha: 0'),

                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Menu akun
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'Pengaturan Akun',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Data Diri'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),

                    ListTile(
                      leading: Icon(Icons.face),
                      title: Text('Registrasi Wajah'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),

                    ListTile(
                      leading: Icon(Icons.refresh),
                      title: Text('Reset Wajah'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}