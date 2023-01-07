import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';
import 'package:movie_app/features/movie/presentation/controllers/movie_controller.dart';
import 'package:movie_app/features/movie/presentation/ui/widgets/custom_input_widget.dart';
import 'package:movie_app/features/movie/presentation/ui/widgets/custom_list_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MovieController _controller;

  @override
  void initState() {
    super.initState();
    _controller = GetIt.I.get<MovieController>();
  }

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
            ValueListenableBuilder<MovieEntity?>(
              valueListenable: _controller.movies,
              builder: (_, movies, __) {
                return movies != null
                    ? Column(
                        children: [
                          SvgPicture.asset(
                            'assets/images/logo_tmdb.svg',
                            semanticsLabel: 'TMDB logo',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: CustomInputWidget(
                                iconPath:
                                    'assets/lottie/icons8_search_white.json',
                                controller: _controller),
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
                    : Center(
                        child: Lottie.asset('assets/lottie/movieLottie.json'));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
