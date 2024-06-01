import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web/common/dados.dart';
import '../models/expenses_model.dart';

class ExpensesApi {
  Future<http.Response> createExpense(ExpensesModel expense) async {

    final url = Uri.parse('$baseUrl/expenses');
    final headers = {'Content-Type': 'application/json', 'Authorization': 'Bearer $chaveToken',};
    final body = json.encode(expense.toJson());

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      return response;
    } else {
      throw Exception('Falha ao criar despesa: ${response.statusCode}');
    }
  }
}
