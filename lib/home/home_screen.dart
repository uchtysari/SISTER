import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/pp.jpg'),
              ),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Selamat Datang,'),
                  Text(
                    'Nama Kamu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('NIS | Kelas | Jurusan'),
                ],
              ),
            ],
          ),

          const SizedBox(height: 25),

          const Text(
            'Informasi Hari Ini',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _Info(icon: Icons.calendar_month, value: '07/11', label: 'Tanggal'),
              _Info(icon: Icons.access_time, value: '07:00', label: 'Masuk'),
              _Info(icon: Icons.access_time, value: '15:00', label: 'Pulang'),
            ],
          ),

          const SizedBox(height: 25),

          const Text(
            'Presensi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const ListTile(
            leading: Icon(Icons.person, color: Colors.green),
            title: Text('Presensi Masuk'),
            subtitle: Text('Belum melakukan presensi'),
          ),

          const Divider(),

          const ListTile(
            leading: Icon(Icons.person, color: Colors.green),
            title: Text('Presensi Pulang'),
            subtitle: Text('Belum melakukan presensi'),
          ),

          const SizedBox(height: 20),

          const Text(
            'Jurnal PKL',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const Text('Periode PKL belum dimulai'),

          const SizedBox(height: 20),

          const Text(
            'Jadwal Pelajaran',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const Text('Belum ada jadwal pelajaran'),
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _Info({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        Text(value),
        Text(label),
      ],
    );
  }
}