import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.25,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Hero(
                tag: 'icon',
                child: Container(
                  width: 60,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.cast,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.grey[900],
                    image: const DecorationImage(
                        image: AssetImage('assets/images/anjana.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TopMostTextButton(text: 'TV Shows'),
              TopMostTextButton(text: 'Movies'),
              TopMostTextButton(text: 'Categories')
            ],
          ),
        ],
      ),
    );
  }
}

class TopMostTextButton extends StatelessWidget {
  const TopMostTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
