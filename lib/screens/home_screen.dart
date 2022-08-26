import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_estados/bloc/usuario/usuario_cubic.dart';
import 'package:flutter_estados/models/usuario_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routerName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, 'contenido');
          }),
      body: BlocBuilder<UsuarioCubic, UsuarioState>(
        builder: (context, state) {
          if (state is UsuarioInitial) {
            return const Center(
              child: Text('No hay informacion del usuario'),
            );
          } else if (state is UsuarioActivo) {
            return InformacionUsuario(usuario: state.usuario);
          } else {
            return const Center(
              child: Text('No hay informacion del usuario'),
            );
          }
        },
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    Key? key,
    required this.usuario,
  }) : super(key: key);
  final UsuarioModel usuario;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'General',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListTile(
              title: Text('Nombre: ${usuario.nombre}'),
            ),
            ListTile(
              title: Text('Edad: ${usuario.edad}'),
            ),
            const Text(
              'Profesiones',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const ListTile(
              title: Text('Ingeniero'),
            ),
          ],
        ));
  }
}
