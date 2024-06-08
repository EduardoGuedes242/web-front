import 'package:web/models/cadUsers_model.dart';
import 'package:web/services/cadUsers_api.dart';

class CadUsersRepository {
  Future<void> cadUsers({
    required String tenantId,
    required String name,
    required String email,
    required String password,
  }) async {
    final user = CadUsersModel(
      tenantId: tenantId,
      name: name,
      email: email,
      password: password,
    );

    try {
      await CadUsersApi().cadUsers(user);
    } catch (e) {
      print('Erro ao adicionar despesa: $e');
    }
  }
}
