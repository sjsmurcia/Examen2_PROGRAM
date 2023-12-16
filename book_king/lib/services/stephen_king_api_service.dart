import 'package:dio/dio.dart';
import 'package:book_king/models/libro_model.dart';

class StephenKingApiService {
  final Dio _dio = Dio();
  Future<List<LibroModel>> obtenerLibros() async {
    try {
      final response =
          await _dio.get('https://stephen-king-api.onrender.com/api/books');
      final List<dynamic> librosJson = response.data['libros '];
      final List<LibroModel> libros =
          librosJson.map((json) => LibroModel.fromJson(json)).toList();
      return libros;
    } catch (error) {
      throw Exception('Errro al obtener la lista de libros: $error');
    }
  }
}
