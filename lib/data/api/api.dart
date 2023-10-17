import 'package:dio/dio.dart';

class Api {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.example.com',
      connectTimeout: const Duration(seconds: 3),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  Future<Map<String, dynamic>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get(
      path,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
