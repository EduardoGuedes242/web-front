import 'package:web/models/login_model.dart';
import 'package:web/services/login_api.dart';

class LoginRepository {
  Future<void> authUser({
    required String email,
    required String password,
  }) async {
    final user = AuthModel(
      email: email,
      password: password,
    );

    try {
      await LoginApi().authUser(user);
    } catch (e) {
      print('Erro ao adicionar despesa: $e');
    }
  }
}
