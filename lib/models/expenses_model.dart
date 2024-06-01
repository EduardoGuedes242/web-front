class ExpensesModel {
  int? companyId;
  double? amount;
  String? date;
  String? category;
  String? description;

  ExpensesModel(
      {this.companyId,
      this.amount,
      this.date,
      this.category,
      this.description});

  ExpensesModel.fromJson(Map<String, dynamic> json) {
    companyId = json['company_id'];
    amount = json['amount'];
    date = json['date'];
    category = json['category'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_id'] = this.companyId;
    data['amount'] = this.amount;
    data['date'] = this.date;
    data['category'] = this.category;
    data['description'] = this.description;
    return data;
  }
}
