import 'package:skeleton_architecture_getx_pattern/app/data/provider/api.dart';

class Repository {
  final apiClient = ApiClient();

  Future<dynamic> get(String endpoint) async {
    final response = await apiClient.get(endpoint);
    return response;
  }

  Future<dynamic> post(String endpoint, dynamic data) async {
    final response = await apiClient.post(endpoint, data);
    return response;
  }

  Future<dynamic> put(String endpoint, dynamic data) async {
    final response = await apiClient.put(endpoint, data);
    return response;
  }

  Future<dynamic> delete(String endpoint) async {
    final response = await apiClient.delete(endpoint);
    return response;
  }

}