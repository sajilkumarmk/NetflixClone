import 'package:flutter/material.dart';

class NetFlixTagWidget extends StatelessWidget {
  const NetFlixTagWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: 'N',
          style: TextStyle(
              color: Colors.red,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5),
          children: [
            TextSpan(
              text: 'FILM',
              style: TextStyle(
                fontSize: 5,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            )
          ]),
    );
  }
}
