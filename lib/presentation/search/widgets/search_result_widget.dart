import 'package:flutter/material.dart';
import '../../utilities/movielist.dart';
import '../../widgets/common_title.dart';
import '../../widgets/main_movie_poster_card.dart';

class SearchResulWidget extends StatelessWidget {
  const SearchResulWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonTitleWidget(title: 'Movies & TV'),
          Expanded(
              child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.1 / 1.8,
            children: List.generate(15, (index) {
              return MainMoviePosterCard(poster: otherPosters[index]);
            }),
          ))
        ],
      ),
    );
  }
}
