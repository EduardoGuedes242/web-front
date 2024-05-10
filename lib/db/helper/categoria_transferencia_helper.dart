import 'package:sqflite/sqflite.dart';

class CategoriaTransferenciaHelper {
  static const String tabela = 'EKL_CATEGORIA_TRANSFERENIA';
  static const String colunaCodigo = 'CTT_CODIGO';
  static const String colunaTituloCategoria = 'CTT_TITULO_CATEGORIA';
  static const String colunaTipoTransferencia = 'CTT_TIPO_TRANSFERENCIA';

  static Future<int> inserirCategoria(
      Database db, Map<String, dynamic> categoria) async {
    return await db.insert(tabela, categoria);
  }

  static Future<int> atualizarCategoria(
      Database db, Map<String, dynamic> categoria) async {
    return await db.update(
      tabela,
      categoria,
      where: '$colunaCodigo = ?',
      whereArgs: [categoria[colunaCodigo]],
    );
  }

  static Future<int> excluirCategoria(Database db, int codigo) async {
    return await db.delete(
      tabela,
      where: '$colunaCodigo = ?',
      whereArgs: [codigo],
    );
  }
}
