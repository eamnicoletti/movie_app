import 'package:dio/dio.dart';
import 'package:movie_app/service/dio_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioServiceImp implements DioService {
  String? themoviebdKey = dotenv.env['THEMOVIEDB_API_KEY'];
  @override
  Dio getDio() {
    return Dio(BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {'authorization': 'Bearer $themoviebdKey'}));
  }
}
