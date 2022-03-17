import 'package:flutter/material.dart';

class MainMoviePosterCard extends StatelessWidget {
  const MainMoviePosterCard({
    Key? key,
    required String poster,
  })  : _poster = poster,
        super(key: key);

  final String _poster;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: NetworkImage(
                _poster,
              ),
              fit: BoxFit.fill)),
    );
  }
}
