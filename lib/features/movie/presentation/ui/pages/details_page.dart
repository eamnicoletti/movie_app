import 'package:flutter/material.dart';
import 'package:movie_app/features/movie/domain/entities/movie_details_entity.dart';
import '../../../../../core/utils/apis.utils.dart';

class DetailsPage extends StatelessWidget {
  final MovieDetailsEntity movie;
  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .55,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: movie.id!,
                  child: Image.network(
                    API.REQUEST_IMG(movie.posterPath!),
                    loadingBuilder: (_, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                          child: CircularProgressIndicator.adaptive());
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                movie.overview!,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.title),
                  ),
                  Text(
                    movie.originalTitle!,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.new_releases),
                  ),
                  Text(movie.releaseDate!),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
