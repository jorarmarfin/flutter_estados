import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_estados/models/usuario_model.dart';
import 'package:meta/meta.dart';

part 'usuario_state.dart';

class UsuarioCubic extends Cubit<UsuarioState> {
  UsuarioCubic() : super(UsuarioInitial());

  void seleccionarUsuario(UsuarioModel user) {
    emit(UsuarioActivo(user));
  }
}
