import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:movie_app/features/movie/data/datasources/get_movies_datasource.dart';
import 'package:movie_app/features/movie/data/datasources/local/get_movies_datasource_decorator.dart';
import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../dtos/movie_dto.dart';

class GetMoviesLocalDatasourceDecoratorImp
    extends GetMoviesDatasourceDecorator {
  GetMoviesLocalDatasourceDecoratorImp(GetMoviesDatasource getMoviesDatasource)
      : super(getMoviesDatasource);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    return (await super()).fold((error) async => Right(await _getInCache()),
        (result) {
      _saveInCache(result);
      return Right(result);
    });
  }

  _saveInCache(MovieEntity movies) async {
    var prefs = await SharedPreferences.getInstance();
    String jsonMovies = jsonEncode(movies.toJson());
    prefs.setString('movies_cache', jsonMovies);
  }

  Future<MovieEntity> _getInCache() async {
    var prefs = await SharedPreferences.getInstance();
    var moviesJsonString = prefs.getString('movies_cache')!;
    var json = jsonDecode(moviesJsonString);
    var movies = MovieDto.fromJson(json);
    return movies;
  }
}
