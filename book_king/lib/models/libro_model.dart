// models/libro_model.dart
import 'villano_model.dart';

class LibroModel {
  final String id;
  final String titulo;
  final String autor;
  final List<String> generos;
  final List<VillanoModel> villanos;

  LibroModel({
    required this.id,
    required this.titulo,
    required this.autor,
    required this.generos,
    required this.villanos,
  });

  factory LibroModel.fromJson(Map<String, dynamic> json) {
    return LibroModel(
      id: json['id'],
      titulo: json['titulo'],
      autor: json['autor'],
      generos: List<String>.from(json['generos']),
      villanos: (json['villanos'] as List)
          .map((villano) => VillanoModel.fromJson(villano))
          .toList(),
    );
  }
}
