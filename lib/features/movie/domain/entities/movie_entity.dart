import 'package:movie_app/features/movie/domain/entities/movie_details_entity.dart';

class MovieEntity {
  String? posterPath;
  int? id;
  String? backdropPath;
  int? totalResults;
  bool? public;
  int? revenue;
  int? page;
  List<MovieDetailsEntity>? listMovies;
  String? iso6391;
  int? totalPages;
  String? description;
  String? iso31661;
  double? averageRating;
  int? runtime;
  String? name;

  MovieEntity({
    required this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.totalResults,
    required this.public,
    required this.revenue,
    required this.page,
    required this.listMovies,
    required this.iso6391,
    required this.totalPages,
    required this.description,
    required this.iso31661,
    required this.averageRating,
    required this.runtime,
    required this.name,
  });
}
