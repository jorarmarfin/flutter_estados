import 'package:flutter/material.dart';
import 'package:flutter_estados/models/usuario_model.dart';

class UsuarioProvider extends ChangeNotifier {
  UsuarioModel? _usuario;

  UsuarioModel? get usuario => _usuario;
  bool get existeUsuario => (_usuario != null) ? true : false;

  set usuario(UsuarioModel? user) {
    _usuario = user;
    notifyListeners();
  }

  
  // String get edad => _usuario!.edad;
  
  // set edad(String value) {
  //   _usuario?.edad = value;
  //   notifyListeners();
  // }
  
  
  


}
