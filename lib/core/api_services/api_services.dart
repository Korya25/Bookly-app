import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final apiKey = '&key=AIzaSyCPTXVvcxDWR4et-IQ1lOwe-HMKMyARJiw';

  ApiServices(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await _dio.get('$baseUrl$endPoint$apiKey');
    return response.data;
  }
}
