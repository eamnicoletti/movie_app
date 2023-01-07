import 'package:movie_app/features/movie/domain/entities/movie_details_entity.dart';

extension MovieDetailsDto on MovieDetailsEntity {
  static MovieDetailsEntity fromJson(Map json) {
    return MovieDetailsEntity(
      posterPath: json['poster_path'],
      adult: json['adult'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      originalTitle: json['original_title'],
      genreIds: List.castFrom<dynamic, int>(json['genre_ids']),
      id: json['id'],
      mediaType: json['media_type'],
      originalLanguage: json['original_language'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      popularity: json['popularity'],
      voteCount: json['vote_count'],
      video: json['video'],
      voteAverage: json['vote_average'],
    );
  }

  Map toJson() {
    return {
      'poster_path': posterPath,
      'adult': adult,
      'overview': overview,
      'release_date': releaseDate,
      'original_title': originalTitle,
      'genre_ids': genreIds,
      'id': id,
      'media_type': mediaType,
      'original_language': originalLanguage,
      'title': title,
      'backdrop_path': backdropPath,
      'popularity': popularity,
      'vote_count': voteCount,
      'video': video,
      'vote_average': voteAverage,
    };
  }
}
