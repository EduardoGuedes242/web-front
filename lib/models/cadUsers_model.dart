class CadUsersModel {
  String? tenantId;
  String? name;
  String? email;
  String? password;

  CadUsersModel({this.tenantId, this.name, this.email, this.password});

  CadUsersModel.fromJson(Map<String, dynamic> json) {
    tenantId = json['tenant_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenant_id'] = this.tenantId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
