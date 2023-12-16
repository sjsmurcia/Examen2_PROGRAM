import 'package:book_king/screens/listado_libros_screen.dart';
import 'package:book_king/screens/detalles_libros_screen.dart'; // Corregir el nombre de la pantalla
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
