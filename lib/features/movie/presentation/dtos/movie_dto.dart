import 'package:movie_app/features/movie/domain/entities/movie_details_entity.dart';
import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';

extension MovieDto on MovieEntity {
  MovieEntity copyWith({
    List<MovieDetailsEntity>? listMovies,
  }) {
    return MovieEntity(
      posterPath: posterPath,
      id: id,
      backdropPath: backdropPath,
      totalResults: totalResults,
      public: public,
      revenue: revenue,
      page: page,
      listMovies: listMovies ?? this.listMovies,
      iso6391: iso6391,
      totalPages: totalPages,
      description: description,
      iso31661: iso31661,
      averageRating: averageRating,
      runtime: runtime,
      name: name,
    );
  }
}
