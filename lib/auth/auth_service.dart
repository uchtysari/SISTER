class AuthService {
  // Demo lokal: status login hanya bertahan selama aplikasi berjalan.
  // Untuk login sungguhan, hubungkan ke backend/database sekolah.
  static bool _loggedIn = false;

  static bool cekLogin() => _loggedIn;

  static void login() {
    _loggedIn = true;
  }

  static void logout() {
    _loggedIn = false;
  }
}
