import '../models/service_model.dart';
import '../services/service_api.dart';

class ServiceRepository {

  Future<void> addService({
    required String name,
    required double price,
    required String time,
    required int companyId,
  }) async {
    
    final service = ServiceModel(
      name: name,
      price: price,
      time: time,
      companyId: companyId,
    );

    try {
      await ApiService().createService(service);
    } catch (e) {
      print('Erro ao adicionar serviço: $e');
    }
  }
}
