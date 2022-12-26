import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/controllers/movie_controller.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository_imp.dart';
import 'package:movie_app/service/dio_service_imp.dart';
import 'package:movie_app/widgets/custom_list_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller = MovieController(
    MoviesRepositoryImp(
      DioServiceImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(28),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            ValueListenableBuilder<Movies?>(
              valueListenable: _controller.movies,
              builder: (_, movies, __) {
                return movies != null
                    ? Column(
                        children: [
                          SvgPicture.asset(
                            'assets/images/logo_tmdb.svg',
                            semanticsLabel: 'TMDB logo',
                          ),
                          TextField(
                            onChanged: _controller.onChanged,
                          ),
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: movies.listMovies!.length,
                            itemBuilder: (_, index) => CustomListCardWidget(
                                movie: movies.listMovies![index]),
                            separatorBuilder: (_, __) => const Divider(),
                          ),
                        ],
                      )
                    : Center(child: Lottie.asset('assets/movieLottie.json'));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
