import 'package:flutter/material.dart';
import 'package:flutter_estados/services/usuario_service.dart';

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
      body: StreamBuilder(
        stream: usuarioService.usuarioSream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? const InformacionUsuario()
              : const Center(child: Text('No hay informacion del usuario'));
        },
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    Key? key,
  }) : super(key: key);

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
              title: Text('Nombre: ${usuarioService.usuario?.nombre}'),
            ),
            ListTile(
              title: Text('Edad:${usuarioService.usuario?.edad}'),
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
