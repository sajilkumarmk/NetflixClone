import 'package:flutter/material.dart';

import '../../utilities/movielist.dart';
import 'top10_card_widget.dart';

class Top10MovieListWidget extends StatelessWidget {
  const Top10MovieListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Top10CardWidget(
            movieposter: otherPosters[index],
            index: index + 1,
          );
        }),
      ),
    );
  }
}
