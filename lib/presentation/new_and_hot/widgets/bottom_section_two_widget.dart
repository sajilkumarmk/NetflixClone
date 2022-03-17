import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSectionTwoWidget extends StatelessWidget {
  const BottomSectionTwoWidget({
    Key? key,
    required this.poster,
  }) : super(key: key);
  final String poster;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 130,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              image: DecorationImage(
                  image: NetworkImage(poster), fit: BoxFit.fill),
            ),
          ),
          const Spacer(),
          Column(
            children: const [
              Icon(
                Icons.send,
              ),
              Text(
                'Share',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: const [
              Icon(Icons.add),
              Text(
                'My List',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: const [
              Icon(Icons.play_arrow),
              Text(
                'Play',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
