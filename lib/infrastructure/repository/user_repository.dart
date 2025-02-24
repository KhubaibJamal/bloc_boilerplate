import 'package:bloc_boilerplate/domain/auth/auth_service.dart';
import 'package:bloc_boilerplate/domain/auth/i_auth_service.dart';

class AuthManager {
  final IAuthService _authService = AuthService();
// IAuthService is an abstract class that defines authentication-related methods but doesn't provide implementations.
// AuthService is a concrete class that implements IAuthService and provides actual functionality.
// _authService is a final field that holds an instance of AuthService, but it's referenced using the IAuthService type.

  void login() {
    _authService.signIn("test@example.com", "password123");
  }
}
