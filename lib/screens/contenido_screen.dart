import 'package:flutter/material.dart';

class ContenidoScreen extends StatelessWidget {
  const ContenidoScreen({Key? key}) : super(key: key);

  static String routerName = 'contenido';

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
              child: const Text(
                'Establecer usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
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
