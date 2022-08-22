import 'dart:async';

import 'package:flutter_estados/models/usuario_model.dart';

class _UsuarioService {
  UsuarioModel? _usuario;
  final StreamController _usuarioStreamController =
      StreamController<UsuarioModel>.broadcast();

  UsuarioModel? get usuario => _usuario;
  bool get existeUsuario => (_usuario != null) ? true : false;

  Stream get usuarioSream => _usuarioStreamController.stream;

  void cargarUsuario(UsuarioModel user) {
    _usuario = user;
    _usuarioStreamController.add(user);
  }
}

final usuarioService = _UsuarioService();
