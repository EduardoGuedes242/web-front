import 'package:web/models/expenses_model.dart';
import 'package:web/services/expenses_api.dart';

class ExpensesRepository {

  Future<void> addExpense({
    required int companyId,
    required double amount,
    required String date,
    required String category,
    required String description,
  }) async {
    
    final expense = ExpensesModel(
      companyId: companyId,
      amount: amount,
      date: date,
      category: category,
      description: description,
    );

    try {
      await ExpensesApi().createExpense(expense);
    } catch (e) {
      print('Erro ao adicionar despesa: $e');
    }
  }
}
