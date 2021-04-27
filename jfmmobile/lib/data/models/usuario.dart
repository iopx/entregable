import 'dart:convert';

class Usuario {
  int id;
  String username;
  String email;

  Usuario({
    this.id,
    this.username,
    this.email,
  });

  static Usuario fromJSON(String jsonUser) {
    return Usuario.fromMap(json.decode(jsonUser));
  }

  static Usuario fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['user_id'],
      username: map['username'],
      email: map['email'],
    );
  }

  String toJSON() {
    return json.encode(this.toMap());
  }

  Map<String, dynamic> toMap() {
    return {
      'user_id': this.id,
      'username': this.username,
      'email': this.email,
    };
  }
}

class UserWidget {
  String username;
  UserWidget({this.username}) {
    this.username = this.username ?? 'no inicio';
  }
}