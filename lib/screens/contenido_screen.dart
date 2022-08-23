import 'package:flutter/material.dart';
import 'package:flutter_estados/models/models.dart';
import 'package:flutter_estados/providers/usuario_provider.dart';
import 'package:provider/provider.dart';

class ContenidoScreen extends StatelessWidget {
  const ContenidoScreen({Key? key}) : super(key: key);

  static String routerName = 'contenido';

  @override
  Widget build(BuildContext context) {
    final usuarioProvider =
        Provider.of<UsuarioProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contenido'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                final user = UsuarioModel('Luis', '42', ['Ing', 'Doc']);
                usuarioProvider.usuario = user;
              },
              child: const Text(
                'Establecer usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioProvider.usuario?.edad = '30';
                usuarioProvider.usuario = usuarioProvider.usuario;
              },
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                'Añadir Profesion',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
