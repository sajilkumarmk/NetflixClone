import 'package:flutter/material.dart';
import '../../utilities/movielist.dart';
import '../../widgets/main_movie_poster_card.dart';

class MoviePosterList extends StatelessWidget {
  const MoviePosterList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        separatorBuilder: (ctx, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: ((context, index) {
          return MainMoviePosterCard(poster: otherPosters[index]);
        }),
      ),
    );
  }
}
