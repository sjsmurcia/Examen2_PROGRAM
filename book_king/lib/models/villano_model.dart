// models/villano_model.dart
class VillanoModel {
  final String nombre;
  final String descripcion;

  VillanoModel({
    required this.nombre,
    required this.descripcion,
  });

  factory VillanoModel.fromJson(Map<String, dynamic> json) {
    return VillanoModel(
      nombre: json['nombre'],
      descripcion: json['descripcion'],
    );
  }
}
