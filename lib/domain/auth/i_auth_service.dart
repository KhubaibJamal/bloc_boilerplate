
abstract class IAuthService {
  Future<void> signIn(String email, String password);
}