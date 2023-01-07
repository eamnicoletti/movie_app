import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_app/features/movie/domain/repositories/get_movies_repository.dart';
import 'package:movie_app/features/movie/domain/usecases/get_movies_usecase.dart';

class GetMoviesUsecaseImp implements GetMoviesUsecase {
  final GetMoviesRepository _getMoviesRepository;
  GetMoviesUsecaseImp(this._getMoviesRepository);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    return await _getMoviesRepository();
  }
}
