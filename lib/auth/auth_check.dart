import 'package:flutter/material.dart';
import 'auth_service.dart';
import '../home/main_navigation.dart';
import '../login/login_screen.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthService.cekLogin()
        ? const MainNavigation()
        : const LoginScreen();
  }
}
