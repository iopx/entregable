
import 'package:jfmmobile/data/models/usuario.dart';
import 'package:jfmmobile/data/services/user.service.dart';
import 'package:rxdart/subjects.dart';

class MainBloc extends Object {
  // ignore: close_sinks
  final BehaviorSubject<Usuario> _loggedUsuario = BehaviorSubject<Usuario>();
  Stream<Usuario> get loggedUsuario => _loggedUsuario;

  Future<Usuario> signInWithLocal(String username, String password) async {
    AuthService service = AuthService();
    Usuario usuario = await service.login(username, password);
    _loggedUsuario.sink.add(usuario);
    return usuario;
  }

}
