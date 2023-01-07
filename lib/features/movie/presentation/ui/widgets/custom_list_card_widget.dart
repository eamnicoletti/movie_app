import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/features/movie/domain/entities/movie_details_entity.dart';
import 'package:movie_app/features/movie/presentation/ui/pages/details_page.dart';

import '../../../../../core/utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final MovieDetailsEntity movie;
  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailsPage(movie: movie),
                  fullscreenDialog: true));
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: Hero(
                  tag: movie.id!,
                  child: CachedNetworkImage(
                    progressIndicatorBuilder: (_, __, progress) => Center(
                      child: CircularProgressIndicator(
                        value: progress.progress,
                      ),
                    ),
                    imageUrl: API.REQUEST_IMG(movie.posterPath!),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title!,
                      style: Theme.of(context).textTheme.headline6,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    const Spacer(),
                    Text('Popularidade: ${movie.popularity}'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Votos: ${movie.voteAverage}'),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
