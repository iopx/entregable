import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:jfmmobile/data/models/producto.dart';
import 'package:jfmmobile/utils/constant.dart';

class ProductService
{
  String url = '$API_URL/api/products/';
  Future<List<Producto>> listar() async {
    List<Producto> lista;
    var response = await http.get(this.url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      // la respuesta es una lista
      var mapList = json.decode(utf8.decode(response.bodyBytes));
      lista = mapList.map<Producto>((item) => Producto.fromMap(item)).toList();
    }
    return lista;
  }
}