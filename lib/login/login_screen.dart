import 'package:flutter/material.dart';
import '../auth/auth_service.dart';
import '../home/main_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF6D9),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Logo
                Image.asset(
                  'assets/images/logo.jpg',
                  width: 150,
                ),

                const SizedBox(height: 40),

                // Kotak Login
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Column(
                    children: [

                      // NIS / Username
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukan NIS atau Username',
                          filled: true,
                          fillColor: const Color(0xFFD8E0E5),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      // Password
                      TextField(
                        obscureText: true,

                        decoration: InputDecoration(
                          hintText: 'Masukan Password',
                          filled: true,
                          fillColor: const Color(0xFFD8E0E5),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Tombol Login
                      SizedBox(
                        width: double.infinity,
                        height: 60,

                        child: ElevatedButton(
                          onPressed: () {

                            AuthService.login();

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainNavigation(),
                              ),
                            );

                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF8BCB7F),
                            foregroundColor: Colors.white,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),

                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}