part of 'usuario_cubic.dart';

@immutable
abstract class UsuarioState {}

class UsuarioInitial extends UsuarioState {
  final existeUsuario = false;
}

class UsuarioActivo extends UsuarioState {
  final existeUsuario = true;
  final UsuarioModel usuario;

  UsuarioActivo(this.usuario);
}
