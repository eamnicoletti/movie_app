import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movies {
  String? posterPath;
  int? id;
  String? backdropPath;
  int? totalResults;
  bool? public;
  int? revenue;
  int? page;
  List<Movie>? listMovies;
  String? iso6391;
  int? totalPages;
  String? description;
  String? iso31661;
  double? averageRating;
  int? runtime;
  String? name;

  Movies({
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

  Movies.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    id = json['id'];
    backdropPath = json['backdrop_path'];
    totalResults = json['total_results'];
    public = json['public'];
    revenue = json['revenue'];
    page = json['page'];
    listMovies =
        List.from(json['results']).map((e) => Movie.fromJson(e)).toList();

    iso6391 = json['iso_639_1'];
    totalPages = json['total_pages'];
    description = json['description'];

    iso31661 = json['iso_3166_1'];
    averageRating = json['average_rating'];
    runtime = json['runtime'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['poster_path'] = this.posterPath;
    data['id'] = this.id;
    data['backdrop_path'] = this.backdropPath;
    data['total_results'] = this.totalResults;
    data['public'] = this.public;
    data['revenue'] = this.revenue;
    data['page'] = this.page;
    if (this.listMovies != null) {
      data['movie'] = this.listMovies!.map((v) => v.toJson()).toList();
    }

    data['iso_639_1'] = this.iso6391;
    data['total_pages'] = this.totalPages;
    data['description'] = this.description;
    data['iso_3166_1'] = this.iso31661;
    data['average_rating'] = this.averageRating;
    data['runtime'] = this.runtime;
    data['name'] = this.name;

    return data;
  }

  @override
  String toString() {
    return 'Movies(posterPath: $posterPath, id: $id, backdropPath: $backdropPath, totalResults: $totalResults, public: $public, revenue: $revenue, page: $page, listMovies: $listMovies, iso6391: $iso6391, totalPages: $totalPages, description: $description, iso31661: $iso31661, averageRating: $averageRating, runtime: $runtime, name: $name)';
  }

  @override
  bool operator ==(covariant Movies other) {
    if (identical(this, other)) return true;

    return other.posterPath == posterPath &&
        other.id == id &&
        other.backdropPath == backdropPath &&
        other.totalResults == totalResults &&
        other.public == public &&
        other.revenue == revenue &&
        other.page == page &&
        listEquals(other.listMovies, listMovies) &&
        other.iso6391 == iso6391 &&
        other.totalPages == totalPages &&
        other.description == description &&
        other.iso31661 == iso31661 &&
        other.averageRating == averageRating &&
        other.runtime == runtime &&
        other.name == name;
  }

  @override
  int get hashCode {
    return posterPath.hashCode ^
        id.hashCode ^
        backdropPath.hashCode ^
        totalResults.hashCode ^
        public.hashCode ^
        revenue.hashCode ^
        page.hashCode ^
        listMovies.hashCode ^
        iso6391.hashCode ^
        totalPages.hashCode ^
        description.hashCode ^
        iso31661.hashCode ^
        averageRating.hashCode ^
        runtime.hashCode ^
        name.hashCode;
  }

  Movies copyWith({
    String? posterPath,
    int? id,
    String? backdropPath,
    int? totalResults,
    bool? public,
    int? revenue,
    int? page,
    List<Movie>? listMovies,
    String? iso6391,
    int? totalPages,
    String? description,
    String? iso31661,
    double? averageRating,
    int? runtime,
    String? name,
  }) {
    return Movies(
      posterPath: posterPath ?? this.posterPath,
      id: id ?? this.id,
      backdropPath: backdropPath ?? this.backdropPath,
      totalResults: totalResults ?? this.totalResults,
      public: public ?? this.public,
      revenue: revenue ?? this.revenue,
      page: page ?? this.page,
      listMovies: listMovies ?? this.listMovies,
      iso6391: iso6391 ?? this.iso6391,
      totalPages: totalPages ?? this.totalPages,
      description: description ?? this.description,
      iso31661: iso31661 ?? this.iso31661,
      averageRating: averageRating ?? this.averageRating,
      runtime: runtime ?? this.runtime,
      name: name ?? this.name,
    );
  }
}

class Movie {
  String? posterPath;
  bool? adult;
  String? overview;
  String? releaseDate;
  String? originalTitle;
  List<int>? genreIds;
  int? id;
  String? mediaType;
  String? originalLanguage;
  String? title;
  String? backdropPath;
  double? popularity;
  int? voteCount;
  bool? video;
  num? voteAverage;

  Movie(
      {required this.posterPath,
      required this.adult,
      required this.overview,
      required this.releaseDate,
      required this.originalTitle,
      required this.genreIds,
      required this.id,
      required this.mediaType,
      required this.originalLanguage,
      required this.title,
      required this.backdropPath,
      required this.popularity,
      required this.voteCount,
      required this.video,
      required this.voteAverage});

  Movie.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['poster_path'] = this.posterPath;
    data['adult'] = this.adult;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['media_type'] = this.mediaType;
    data['original_language'] = this.originalLanguage;
    data['title'] = this.title;
    data['backdrop_path'] = this.backdropPath;
    data['popularity'] = this.popularity;
    data['vote_count'] = this.voteCount;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    return data;
  }

  @override
  String toString() {
    return 'Movie(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, originalTitle: $originalTitle, genreIds: $genreIds, id: $id, mediaType: $mediaType, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;

    return other.posterPath == posterPath &&
        other.adult == adult &&
        other.overview == overview &&
        other.releaseDate == releaseDate &&
        other.originalTitle == originalTitle &&
        listEquals(other.genreIds, genreIds) &&
        other.id == id &&
        other.mediaType == mediaType &&
        other.originalLanguage == originalLanguage &&
        other.title == title &&
        other.backdropPath == backdropPath &&
        other.popularity == popularity &&
        other.voteCount == voteCount &&
        other.video == video &&
        other.voteAverage == voteAverage;
  }

  @override
  int get hashCode {
    return posterPath.hashCode ^
        adult.hashCode ^
        overview.hashCode ^
        releaseDate.hashCode ^
        originalTitle.hashCode ^
        genreIds.hashCode ^
        id.hashCode ^
        mediaType.hashCode ^
        originalLanguage.hashCode ^
        title.hashCode ^
        backdropPath.hashCode ^
        popularity.hashCode ^
        voteCount.hashCode ^
        video.hashCode ^
        voteAverage.hashCode;
  }

  Movie copyWith({
    String? posterPath,
    bool? adult,
    String? overview,
    String? releaseDate,
    String? originalTitle,
    List<int>? genreIds,
    int? id,
    String? mediaType,
    String? originalLanguage,
    String? title,
    String? backdropPath,
    double? popularity,
    int? voteCount,
    bool? video,
    num? voteAverage,
  }) {
    return Movie(
      posterPath: posterPath ?? this.posterPath,
      adult: adult ?? this.adult,
      overview: overview ?? this.overview,
      releaseDate: releaseDate ?? this.releaseDate,
      originalTitle: originalTitle ?? this.originalTitle,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      mediaType: mediaType ?? this.mediaType,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      title: title ?? this.title,
      backdropPath: backdropPath ?? this.backdropPath,
      popularity: popularity ?? this.popularity,
      voteCount: voteCount ?? this.voteCount,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }
}

// class ObjectIds {
//   String? movie100402;
//   String? movie2080;
//   String? movie76170;
//   String? movie71676;
//   String? movie1724;
//   String? movie68721;
//   String? movie49538;
//   String? movie1930;
//   String? movie10138;
//   String? movie99861;
//   String? movie1979;
//   String? movie1726;
//   String? movie118340;
//   String? movie13056;
//   String? movie76338;
//   String? movie127585;
//   String? movie102382;
//   String? movie1771;
//   String? movie10195;
//   String? movie24428;

//   ObjectIds(
//       {this.movie100402,
//       this.movie2080,
//       this.movie76170,
//       this.movie71676,
//       this.movie1724,
//       this.movie68721,
//       this.movie49538,
//       this.movie1930,
//       this.movie10138,
//       this.movie99861,
//       this.movie1979,
//       this.movie1726,
//       this.movie118340,
//       this.movie13056,
//       this.movie76338,
//       this.movie127585,
//       this.movie102382,
//       this.movie1771,
//       this.movie10195,
//       this.movie24428});

//   ObjectIds.fromJson(Map<String, dynamic> json) {
//     movie100402 = json['movie:100402'];
//     movie2080 = json['movie:2080'];
//     movie76170 = json['movie:76170'];
//     movie71676 = json['movie:71676'];
//     movie1724 = json['movie:1724'];
//     movie68721 = json['movie:68721'];
//     movie49538 = json['movie:49538'];
//     movie1930 = json['movie:1930'];
//     movie10138 = json['movie:10138'];
//     movie99861 = json['movie:99861'];
//     movie1979 = json['movie:1979'];
//     movie1726 = json['movie:1726'];
//     movie118340 = json['movie:118340'];
//     movie13056 = json['movie:13056'];
//     movie76338 = json['movie:76338'];
//     movie127585 = json['movie:127585'];
//     movie102382 = json['movie:102382'];
//     movie1771 = json['movie:1771'];
//     movie10195 = json['movie:10195'];
//     movie24428 = json['movie:24428'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['movie:100402'] = this.movie100402;
//     data['movie:2080'] = this.movie2080;
//     data['movie:76170'] = this.movie76170;
//     data['movie:71676'] = this.movie71676;
//     data['movie:1724'] = this.movie1724;
//     data['movie:68721'] = this.movie68721;
//     data['movie:49538'] = this.movie49538;
//     data['movie:1930'] = this.movie1930;
//     data['movie:10138'] = this.movie10138;
//     data['movie:99861'] = this.movie99861;
//     data['movie:1979'] = this.movie1979;
//     data['movie:1726'] = this.movie1726;
//     data['movie:118340'] = this.movie118340;
//     data['movie:13056'] = this.movie13056;
//     data['movie:76338'] = this.movie76338;
//     data['movie:127585'] = this.movie127585;
//     data['movie:102382'] = this.movie102382;
//     data['movie:1771'] = this.movie1771;
//     data['movie:10195'] = this.movie10195;
//     data['movie:24428'] = this.movie24428;
//     return data;
//   }
// }

// class Comments {
//   Null? movie100402;
//   Null? movie2080;
//   Null? movie76170;
//   Null? movie71676;
//   Null? movie1724;
//   Null? movie68721;
//   Null? movie49538;
//   Null? movie1930;
//   Null? movie10138;
//   String? movie99861;
//   Null? movie1979;
//   Null? movie1726;
//   String? movie118340;
//   Null? movie13056;
//   Null? movie76338;
//   Null? movie127585;
//   Null? movie102382;
//   Null? movie1771;
//   Null? movie10195;
//   Null? movie24428;

//   Comments(
//       {this.movie100402,
//       this.movie2080,
//       this.movie76170,
//       this.movie71676,
//       this.movie1724,
//       this.movie68721,
//       this.movie49538,
//       this.movie1930,
//       this.movie10138,
//       this.movie99861,
//       this.movie1979,
//       this.movie1726,
//       this.movie118340,
//       this.movie13056,
//       this.movie76338,
//       this.movie127585,
//       this.movie102382,
//       this.movie1771,
//       this.movie10195,
//       this.movie24428});

//   Comments.fromJson(Map<String, dynamic> json) {
//     movie100402 = json['movie:100402'];
//     movie2080 = json['movie:2080'];
//     movie76170 = json['movie:76170'];
//     movie71676 = json['movie:71676'];
//     movie1724 = json['movie:1724'];
//     movie68721 = json['movie:68721'];
//     movie49538 = json['movie:49538'];
//     movie1930 = json['movie:1930'];
//     movie10138 = json['movie:10138'];
//     movie99861 = json['movie:99861'];
//     movie1979 = json['movie:1979'];
//     movie1726 = json['movie:1726'];
//     movie118340 = json['movie:118340'];
//     movie13056 = json['movie:13056'];
//     movie76338 = json['movie:76338'];
//     movie127585 = json['movie:127585'];
//     movie102382 = json['movie:102382'];
//     movie1771 = json['movie:1771'];
//     movie10195 = json['movie:10195'];
//     movie24428 = json['movie:24428'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['movie:100402'] = this.movie100402;
//     data['movie:2080'] = this.movie2080;
//     data['movie:76170'] = this.movie76170;
//     data['movie:71676'] = this.movie71676;
//     data['movie:1724'] = this.movie1724;
//     data['movie:68721'] = this.movie68721;
//     data['movie:49538'] = this.movie49538;
//     data['movie:1930'] = this.movie1930;
//     data['movie:10138'] = this.movie10138;
//     data['movie:99861'] = this.movie99861;
//     data['movie:1979'] = this.movie1979;
//     data['movie:1726'] = this.movie1726;
//     data['movie:118340'] = this.movie118340;
//     data['movie:13056'] = this.movie13056;
//     data['movie:76338'] = this.movie76338;
//     data['movie:127585'] = this.movie127585;
//     data['movie:102382'] = this.movie102382;
//     data['movie:1771'] = this.movie1771;
//     data['movie:10195'] = this.movie10195;
//     data['movie:24428'] = this.movie24428;
//     return data;
//   }
// }
