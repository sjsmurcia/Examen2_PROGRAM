import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book_king/providers/libros_provider.dart';

import 'package:book_king/screens/listado_libros_screen.dart';
import 'package:book_king/screens/detalles_libros_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LibrosProvider()),
        // Otros providers si los tienes
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Libros de Stephen King',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ListadoLibrosScreen(),
        DetallesLibrosScreen.routeName: (context) => DetallesLibrosScreen(),
      },
    );
  }
}
