import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';

import 'movie_details_dto.dart';

extension MovieDto on MovieEntity {
  static MovieEntity fromJson(Map json) {
    return MovieEntity(
      posterPath: json['poster_path'],
      id: json['id'] as int,
      backdropPath: json['backdrop_path'],
      totalResults: json['total_results'],
      public: json['public'] as bool,
      revenue: json['revenue'] as int,
      page: json['page'] as int,
      listMovies: List.from(json['results'])
          .map((e) => MovieDetailsDto.fromJson(e))
          .toList(),
      iso6391: json['iso_639_1'],
      totalPages: json['total_pages'],
      description: json['description'],
      iso31661: json['iso_3166_1'],
      averageRating: json['average_rating'] as double,
      runtime: json['runtime'] as int,
      name: json['name'],
    );
  }

  Map toJson() {
    return {
      'poster_path': posterPath,
      'id': id,
      'backdrop_path': backdropPath,
      'total_results': totalResults,
      'public': public,
      'revenue': revenue,
      'page': page,
      'results': listMovies!.map((v) => v.toJson()).toList(),
      'iso_639_1': iso6391,
      'total_pages': totalPages,
      'description': description,
      'iso_3166_1': iso31661,
      'average_rating': averageRating,
      'runtime': runtime,
      'name': name,
    };
  }
}
