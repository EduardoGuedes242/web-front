class ServiceModel {
  String? name;
  double ? price;
  String? time;
  int? companyId;

  ServiceModel({this.name, this.price, this.time, this.companyId});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    time = json['time'];
    companyId = json['company_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['time'] = this.time;
    data['company_id'] = this.companyId;
    return data;
  }
}
