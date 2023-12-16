import 'package:flutter/foundation.dart';
import 'package:book_king/models/libro_model.dart';
import 'package:book_king/services/stephen_king_api_service.dart';

class LibrosProvider with ChangeNotifier {
  List<LibroModel> _listaLibros = [];
  final StephenKingApiService _apiService = StephenKingApiService();

  List<LibroModel> get listaLibros => _listaLibros;
  Future<void> cargarLibros() async {
    try {
      _listaLibros = await _apiService.obtenerLibros();
      notifyListeners();
    } catch (error) {
      print('error al cargar la lista de libros: $error ');
    }
  }
}
