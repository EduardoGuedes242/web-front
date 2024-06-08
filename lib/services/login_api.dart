import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web/common/dados.dart';
import 'package:web/models/login_model.dart';

class LoginApi {
  Future<http.Response> authUser(AuthModel login) async {
    final url = Uri.parse('$baseUrl/user/login');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $chaveToken',
    };

    final body = json.encode(login.toJson());

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      return response;
    } else {
      throw Exception('Falha ao criar despesa: ${response.statusCode}');
    }
  }
}
