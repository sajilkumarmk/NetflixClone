import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class Top10CardWidget extends StatelessWidget {
  const Top10CardWidget({
    Key? key,
    required this.movieposter,
    required this.index,
  }) : super(key: key);

  final String movieposter;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Container(
              width: 140,
              // height: 250,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(
                    movieposter,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: -8,
          bottom: -26,
          child: BorderedText(
            strokeWidth: 4.0,
            strokeColor: Colors.white,
            child: Text(
              '$index',
              // softWrap: true,
              style: const TextStyle(
                decoration: TextDecoration.none,
                // decorationColor: Colors.green,
                fontSize: 150,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
