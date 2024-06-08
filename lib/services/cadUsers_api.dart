import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web/common/dados.dart';
import 'package:web/models/cadUsers_model.dart';

class CadUsersApi {
  Future<http.Response> cadUsers(CadUsersModel user) async {
    final url = Uri.parse('$baseUrl/v1/user');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $chaveToken',
    };

    final body = json.encode(user.toJson());

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      return response;
    } else {
      throw Exception('Falha ao criar despesa: ${response.statusCode}');
    }
  }
}
