import 'package:flutter/material.dart';
import '../auth/auth_service.dart';
import '../login/login_screen.dart';

class AkunScreen extends StatelessWidget {
  const AkunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 15),
          const Center(
            child: CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('assets/images/pp.jpg'),
            ),
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              'Nama Kamu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _AttendanceCount(value: '0', label: 'Hadir'),
              _AttendanceCount(value: '0', label: 'Sakit'),
              _AttendanceCount(value: '0', label: 'Izin'),
              _AttendanceCount(value: '0', label: 'Alpha'),
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            'Profil',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const ListTile(
            leading: Icon(Icons.person, color: Color(0xFF55A94B)),
            title: Text('Data Diri'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.face, color: Color(0xFF55A94B)),
            title: Text('Registrasi Wajah'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(
              Icons.face_retouching_natural,
              color: Color(0xFF55A94B),
            ),
            title: Text('Reset Wajah'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              AuthService.logout();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (_) => const LoginScreen(),
                ),
                (route) => false,
              );
            },
            icon: const Icon(Icons.logout),
            label: const Text('Keluar'),
          ),
        ],
      ),
    );
  }
}

class _AttendanceCount extends StatelessWidget {
  final String value;
  final String label;

  const _AttendanceCount({
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
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}