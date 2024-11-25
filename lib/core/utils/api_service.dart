import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  /// Get request
  Future<Response> get(String path) async {
    return await dio.get(path);
  }

  /// Post request
  Future<Response> post(
    String path,
    Object? body,
    String token,
  ) async {
    return await dio.post(
      path,
      data: body,
      options: Options(
        contentType: 'application/x-www-form-urlencoded',
        headers: {'Authorization': 'Bearer $token'},
      ),
    );
  }
}
