class AuthService {

  static bool sudahLogin = false;

  // Fungsi Login
  static void login() {
    sudahLogin = true;
  }

  // Fungsi Logout
  static void logout() {
    sudahLogin = false;
  }

  // Mengecek status Login
  static bool cekLogin() {
    return sudahLogin;
  }

}