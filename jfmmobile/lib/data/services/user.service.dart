import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jfmmobile/data/models/usuario.dart';
import 'package:jfmmobile/utils/constant.dart';
import 'package:jfmmobile/utils/jwt.utils.dart';

class AuthService {
  String url = '$API_URL/api/auth/login';

  Future<Usuario> login(String username, String password) async {
    final storage = new FlutterSecureStorage();

    var response = await http.post(url, body: {
      'username': username,
      'password': password,
    });
    Usuario user;
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      await storage.write(key: 'jwt-token', value: data['token']);
      Map<String, dynamic> tokenData = JwtUtils.decrypt(data['token']);
      user = Usuario.fromMap(tokenData);
      String jsonUser = user.toJSON();
      await storage.write(key: 'user', value: jsonUser);
    }

    return user;
  }
}