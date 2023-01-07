import 'package:get_it/get_it.dart';
import 'package:movie_app/features/movie/presentation/controllers/movie_controller.dart';
import 'package:movie_app/core/data/services/dio_http_service_imp.dart';
import 'package:movie_app/core/domain/service/http_service.dart';
import 'package:movie_app/features/movie/data/datasources/get_movies_datasource.dart';
import 'package:movie_app/features/movie/data/datasources/local/get_movies_local_datasource_decorator_imp.dart';
import 'package:movie_app/features/movie/data/datasources/remote/get_movies_remote_datasource_imp.dart';
import 'package:movie_app/features/movie/data/repositories/get_movies_repository_imp.dart';
import 'package:movie_app/features/movie/domain/repositories/get_movies_repository.dart';
import 'package:movie_app/features/movie/domain/usecases/get_movies_usecase.dart';
import 'package:movie_app/features/movie/domain/usecases/get_movies_usecase_imp.dart';

class Inject {
  static inicialize() {
    GetIt getIt = GetIt.instance;
    // core
    getIt.registerLazySingleton<HttpService>(() => DioHttpServiceImp());

    // datasources
    getIt.registerLazySingleton<GetMoviesDatasource>(() =>
        GetMoviesLocalDatasourceDecoratorImp(
            GetMoviesRemoteDatasourceImp(getIt())));

    // repositories
    getIt.registerLazySingleton<GetMoviesRepository>(
        () => GetMoviesRepositoryImp(getIt()));

    // usecases
    getIt.registerLazySingleton<GetMoviesUsecase>(
        () => GetMoviesUsecaseImp(getIt()));

    // controllers
    getIt
        .registerLazySingleton<MovieController>(() => MovieController(getIt()));
  }
}
