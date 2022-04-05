import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NetworkFaildWidget extends StatelessWidget {
  const NetworkFaildWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset(
        //   "assets/images/error.png",
        //   width: 75,
        //   height: 75,
        //   alignment: Alignment.center,
        // ),
        Lottie.asset(
          'assets/animations/warning.json',
          repeat: false,
          fit: BoxFit.fill,
          height: 100,
          width: 100,
        ),
        const Text(
          'Network Faild.!',
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
