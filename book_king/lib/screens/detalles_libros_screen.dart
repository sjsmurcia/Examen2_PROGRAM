import 'package:book_king/models/villano_model.dart';
import 'package:flutter/material.dart ';
import 'package:provider/provider.dart';
import 'package:book_king/models/libro_model.dart';
import 'package:book_king/providers/libros_provider.dart';

class DetallesLibrosScreen extends StatelessWidget {
  static const routeName = '/detalles_libro';

  @override
  Widget build(BuildContext context) {
    final libroId = ModalRoute.of(context)!.settings.arguments as String;
    final librosProvider = Provider.of<LibrosProvider>(context);
    final LibroModel libro =
        librosProvider.listaLibros.firstWhere((libro) => libro.id == libroId);

    return Scaffold(
      appBar: AppBar(
        title: Text(libro.titulo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Autor: ${libro.autor}'),
            Text('Géneros: ${libro.generos.join(', ')}'),
            SizedBox(height: 16),
            Text('Villanos Asociados:'),
            ...libro.villanos
                .map((villano) => _buildVillanoTile(villano))
                .toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildVillanoTile(VillanoModel villano) {
    return ListTile(
      title: Text(villano.nombre),
      subtitle: Text(villano.descripcion),
    );
  }
}
