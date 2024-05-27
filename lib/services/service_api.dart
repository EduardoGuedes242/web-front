import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web/common/dados.dart';
import '../models/service_model.dart';

class ApiService {
  Future<http.Response> createService(ServiceModel service) async {

    final url = Uri.parse('$baseUrl/services');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode(service.toJson());

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      // Sucesso na criação do serviço
      return response;
    } else {
      // Lidar com erros
      throw Exception('Falha ao criar serviço: ${response.statusCode}');
    }
  }
}
