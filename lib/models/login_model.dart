class AuthModel {
  String? email;
  String? password;

  AuthModel({this.email, this.password});

  AuthModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['senha'] = this.password;
    return data;
  }
}
