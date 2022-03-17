import 'package:flutter/material.dart';

class Section3Widget extends StatelessWidget {
  const Section3Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Emotional - Romantic - Drama',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {},
                child: Column(
                  children: const [
                    Icon(Icons.add),
                    Text(
                      'My List',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                      size: 26,
                    ),
                    Text(
                      'Play',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Column(
                  children: const [
                    Icon(Icons.info_outline),
                    Text(
                      'Info',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
