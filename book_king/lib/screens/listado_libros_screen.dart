import 'package:flutter/material.dart';
import 'package:book_king/providers/libros_provider.dart';

class ListadoLibrosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final librosProvider = Provider.of<LibrosProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Listado de Libros'),
      ),
      body: FutureBuilder(
        future: librosProvider.cargarLibros(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: librosProvider.listaLibros.length,
              itemBuilder: (context, index) {
                final libro = librosProvider.listaLibros[index];
                return ListTile(
                  title: Text(libro.titulo),
                  onTap: () {
                    // Navegar a la pantalla de detalles del libro
                    // Puedes implementar esta navegación según tus necesidades
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
