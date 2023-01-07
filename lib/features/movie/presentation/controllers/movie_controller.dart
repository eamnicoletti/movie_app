import 'package:flutter/material.dart';
import 'package:movie_app/features/movie/domain/entities/movie_details_entity.dart';
import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';
import 'package:movie_app/features/movie/domain/usecases/get_movies_usecase.dart';

import '../dtos/movie_dto.dart';

class MovieController {
  final GetMoviesUsecase _getMoviesUsecase;

  MovieController(this._getMoviesUsecase) {
    fetch();
  }

  ValueNotifier<MovieEntity?> movies = ValueNotifier<MovieEntity?>(null);
  MovieEntity? _cachedMovies;

  onChanged(String value) {
    List<MovieDetailsEntity>? list = _cachedMovies!.listMovies
        ?.where(
          (e) => e.toString().toLowerCase().contains(value.toLowerCase()),
        )
        .toList();
    movies.value = movies.value!.copyWith(listMovies: list);
  }

  fetch() async {
    var result = await _getMoviesUsecase();

    result.fold(
      (error) => debugPrint(error.toString()),
      (success) => movies.value = success,
    );

    _cachedMovies = movies.value;
  }
}
