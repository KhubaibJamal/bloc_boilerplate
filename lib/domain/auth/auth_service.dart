import 'package:bloc_boilerplate/domain/auth/i_auth_service.dart';

class AuthService implements IAuthService {
  @override
  Future<void> signIn(String email, String password) async {
    // Implement actual authentication logic
    print("User signed in with $email");
  }
}
