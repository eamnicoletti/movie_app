import 'package:dartz/dartz.dart';
import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';

abstract class GetMoviesUsecase {
  Future<Either<Exception, MovieEntity>> call();
}
