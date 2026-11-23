import 'package:flutter/material.dart';

import 'auth_service.dart';
import '../login/login_screen.dart';
import '../home/main_navigation.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({super.key});

  @override
  Widget build(BuildContext context) {

    if (AuthService.cekLogin()) {
      return const MainNavigation();
    } else {
      return const LoginScreen();
    }

  }
}