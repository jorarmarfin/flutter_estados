import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_estados/bloc/usuario/usuario_cubic.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => UsuarioCubic())],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: HomeScreen.routerName,
        routes: {
          HomeScreen.routerName: (context) => const HomeScreen(),
          ContenidoScreen.routerName: (context) => const ContenidoScreen(),
        },
      ),
    );
  }
}
