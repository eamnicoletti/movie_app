import 'package:movie_app/decorators/movies_repository_decorator.dart';
import 'package:movie_app/models/movies_model.dart';

class MoviesCacheRepositoryDecorator extends MoviesRepositoryDecorator {
  MoviesCacheRepositoryDecorator(super.moviesRepository);

  @override
  Future<Movies> getMovies() async {
    return super.getMovies();
  }
}
