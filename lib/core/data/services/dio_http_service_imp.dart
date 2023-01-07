import 'package:dio/dio.dart';
import 'package:movie_app/core/domain/service/http_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioHttpServiceImp implements HttpService {
  late Dio _dio;
  String? themoviebdKey = dotenv.env['THEMOVIEDB_API_KEY'];

  DioHttpServiceImp() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {'authorization': 'Bearer $themoviebdKey'},
      ),
    );
  }

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}
