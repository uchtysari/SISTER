
import 'package:flutter/material.dart';

import 'home_screen.dart';
import '../lms/lms_screen.dart';
import '../presensi/presensi_screen.dart';
import '../akun/akun_screen.dart';
import '../cbt/cbt_screen.dart';



class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {

  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const LmsScreen(),
    const PresensiScreen(),
    const CbtScreen(),
    const AkunScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

        selectedItemColor: const Color(0xFF62A85B),
        unselectedItemColor: Colors.grey,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'LMS',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Presensi',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'CBT',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),

        ],
      ),
    );
  }
}