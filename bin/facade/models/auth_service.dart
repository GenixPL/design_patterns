class Token {}

class AuthService {
  Token? authenticate(String email, String password) {
    if (email.isNotEmpty && password.isNotEmpty) {
      return Token();
    }

    return null;
  }
}
