import 'package:flutter/material.dart';

class MovieVideoCardWidget extends StatelessWidget {
  const MovieVideoCardWidget({
    Key? key,
    required this.screenWidth,
    required String poster,
  })  : _poster = poster,
        super(key: key);

  final double screenWidth;
  final String _poster;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[900],
            image: DecorationImage(
              image: NetworkImage(_poster),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          child: IconButton(
            onPressed: () {},
            disabledColor: Colors.grey,
            icon: const Icon(
              Icons.volume_off_outlined,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
