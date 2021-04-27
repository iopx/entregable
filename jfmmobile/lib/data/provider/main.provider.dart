
import 'package:flutter/material.dart';
import 'package:jfmmobile/data/bloc/main.bloc.dart';

class MainProvider extends InheritedWidget {
  final bloc = MainBloc();

  MainProvider({Key key, Widget child}) : super(key: key, child: child);

  static MainBloc of(BuildContext ctx) {
    return ctx.dependOnInheritedWidgetOfExactType<MainProvider>().bloc;
  }

  @override
  bool updateShouldNotify(_) => true;
}