import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
       Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      const Spacer(),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.cast,
          // size: 30,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Colors.blue,
            image: const DecorationImage(
              image: AssetImage('assets/images/anjana.jpg'),
              fit: BoxFit.fill
              ),
          ),
        ),
      ),
    ]);
  }
}
