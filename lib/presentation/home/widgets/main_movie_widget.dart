import 'package:flutter/material.dart';

import '../../utilities/movielist.dart';

class MainMovieWidget extends StatelessWidget {
  const MainMovieWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 550,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                otherPosters[1],
              ),
            ),
          ),
        ),
        Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.center,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 150,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
