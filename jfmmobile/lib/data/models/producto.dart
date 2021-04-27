import 'dart:convert';

class Producto {
  int id;
  String name;
  String image;
  String info;

  Producto({
    this.id,
    this.name,
    this.image,
    this.info,
  });

  static Producto fromJSON(String jsonProducto) {
    return Producto.fromMap(json.decode(jsonProducto));
  }

  static Producto fromMap(Map<String, dynamic> map) {
    return Producto(
      id: map['id'],
      name: map['nombre'],
      image: map['imagen'],
      info: map['info'],
    );
  }

  String toJSON() {
    return json.encode(this.toMap());
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'image': this.image,
      'info': this.info,
    };
  }
}