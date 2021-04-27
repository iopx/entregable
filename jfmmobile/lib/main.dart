
import 'package:flutter/material.dart';
import 'package:jfmmobile/screens/inicio.dart';

import 'data/provider/main.provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainProvider(
      child: MaterialApp(
        home: InicioScreen(),
      ),
    );
  }
}
