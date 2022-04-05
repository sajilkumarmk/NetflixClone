import 'package:flutter/material.dart';

class MainMoviePosterCard extends StatelessWidget {
  final String poster;
  const MainMoviePosterCard({
    Key? key,
    required this.poster,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          poster,
          fit: BoxFit.cover,
          errorBuilder: (ctx, obj, st) {
            return Image.asset(
              "assets/images/error.png",
            );
          },
        ),
      ),
    );
  }
}
