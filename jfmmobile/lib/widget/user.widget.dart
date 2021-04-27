import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jfmmobile/data/bloc/main.bloc.dart';
import 'package:jfmmobile/data/models/usuario.dart';
import 'package:jfmmobile/data/provider/main.provider.dart';
import 'package:jfmmobile/screens/login.dart';

class UserIcon extends StatelessWidget {
  Color color = Colors.black;
  double size = 12;
  UserIcon({this.color, this.size});

  @override
  Widget build(BuildContext context) {
    MainBloc bloc = MainProvider.of(context);

    return StreamBuilder<Usuario>(
      stream: bloc.loggedUsuario,
      builder: (_, snap) {
        if (snap.hasData && snap.data != null) {
          return FaIcon(
            FontAwesomeIcons.user
          );
        } else {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InicioSesionScreen(),
              ),
            ),
            child: FaIcon(FontAwesomeIcons.signInAlt),
          );
        }
      },
    );
  }
}