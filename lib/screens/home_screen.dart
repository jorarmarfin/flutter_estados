import 'package:flutter/material.dart';

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
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'General',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                title: Text('Nombre:'),
              ),
              ListTile(
                title: Text('Edad:'),
              ),
              Text(
                'Profesiones',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                title: Text('Ingeniero'),
              ),
              ListTile(
                title: Text('Abogado'),
              ),
              ListTile(
                title: Text('Arqueologo'),
              ),
            ],
          )),
    );
  }
}
