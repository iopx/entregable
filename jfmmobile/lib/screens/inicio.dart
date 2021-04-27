
import 'package:flutter/material.dart';
import 'package:jfmmobile/data/bloc/main.bloc.dart';
import 'package:jfmmobile/data/models/producto.dart';
import 'package:jfmmobile/data/provider/main.provider.dart';
import 'package:jfmmobile/data/services/product.service.dart';
import 'package:jfmmobile/screens/info.dart';
import 'package:jfmmobile/widget/user.widget.dart';

class InicioScreen extends StatefulWidget {
  @override
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  List<Producto> products = [];
  @override
  
  Widget build(BuildContext context) {
    MainBloc bloc = MainProvider.of(context);
    if (products.length == 0) {
      listartodos();
    }
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Productos'),
          actions: [
            UserIcon()
          ],
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.all(5),
            children: this.products.length != 0 ? products.map((e) => _product(e)).toList() : [Text('cargando'),],
          ),
        ),
      ),
    );
  }
  Widget _product(Producto producto)
  {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => InfoScreen(product: producto,)
          )
        );
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        child: Stack(
          children: [
            Image.network(producto.image),
            Positioned(
              right: 15,
              left: 15,
              bottom: 20,
              child: Card(
                child: Column(
                  children: [
                    Text(producto.name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    Text(producto.info),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void listartodos() async
  {
    ProductService service = ProductService();
    List<Producto> lista = await service.listar();
    setState(() {
      this.products = lista;
    });
  }
}