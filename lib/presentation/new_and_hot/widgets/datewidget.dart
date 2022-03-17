import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'FEB',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            '11',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
