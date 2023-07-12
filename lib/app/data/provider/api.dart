import 'package:dio/dio.dart';

class ApiClient {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';
  final Dio _dio = Dio();

  Future<Response<dynamic>> get(String endpoint) async {
    try {
      final response = await _dio.get(_baseUrl + endpoint);
      return response;
    } catch (error) {
      throw Exception('Failed to perform GET request: $error');
    }
  }

  Future<Response<dynamic>> post(String endpoint, dynamic data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } catch (error) {
      throw Exception('Failed to perform POST request: $error');
    }
  }

  Future<Response<dynamic>> put(String endpoint, dynamic data) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response;
    } catch (error) {
      throw Exception('Failed to perform PUT request: $error');
    }
  }

  Future<Response<dynamic>> delete(String endpoint) async {
    try {
      final response = await _dio.delete(endpoint);
      return response;
    } catch (error) {
      throw Exception('Failed to perform DELETE request: $error');
    }
  }
}
