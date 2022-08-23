import 'package:flutter/material.dart';
import 'package:flutter_estados/models/usuario_model.dart';
import 'package:flutter_estados/providers/usuario_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routerName = 'home';

  @override
  Widget build(BuildContext context) {
    final usuarioProvider = Provider.of<UsuarioProvider>(context);
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
      body: usuarioProvider.existeUsuario
          ? InformacionUsuario(
              usuario: usuarioProvider.usuario as UsuarioModel,
            )
          : const Text('No existe usuario'),
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
            const ListTile(
              title: Text('Abogado'),
            ),
            const ListTile(
              title: Text('Arqueologo'),
            ),
          ],
        ));
  }
}
