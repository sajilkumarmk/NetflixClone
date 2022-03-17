import 'package:flutter/material.dart';
import 'main_page/screen_main_page.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    gotoHome(context);
    return const Scaffold(
      body: Center(
        child: Hero(
          tag: 'icon',
          child: Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }

  Future<void> gotoHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (builder) {
          return ScreenMainPage();
        },
      ),
    );
  }
}
