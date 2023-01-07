import 'package:dartz/dartz.dart';
import 'package:movie_app/features/movie/data/datasources/get_movies_datasource.dart';
import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';

class GetMoviesDatasourceDecorator implements GetMoviesDatasource {
  final GetMoviesDatasource _getMoviesDatasource;
  GetMoviesDatasourceDecorator(this._getMoviesDatasource);

  @override
  Future<Either<Exception, MovieEntity>> call() => _getMoviesDatasource();
}
