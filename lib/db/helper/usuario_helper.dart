import 'package:web/db/sqlite.dart';

class UsuarioHelper {
  static const String usuNome = 'USU_NOME';
  static const String usuLogin = 'USU_LOGIN';
  static const String usuSenha = 'USU_SENHA';

  static Future<int> inserirUsuario({
    required String nome,
    required String login,
    required String senha,
  }) async {
    String query = '''INSERT INTO EKL_USUARIOS
       (USU_NOME,
       USU_LOGIN,
       USU_SENHA
       ) VALUES (
        $nome,
        $login,
        $usuSenha
        )''';

    return await Dbutil.db.rawInsert(query);
  }
}
