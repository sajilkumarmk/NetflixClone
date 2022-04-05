import 'package:flutter/material.dart';

import '../downloads/screen_downloads.dart';
import '../fast_laugh/screen_fast_laugh.dart';
import '../home/Screen_home.dart';
import '../new_and_hot/screen_newandhot.dart';
import '../search/screen_search.dart';
import 'widgets/bottom_navigation.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    const ScreenHomePage(),
    const ScreenNewAndHotPage(),
    const ScreenFastLaughPage(),
    ScreenSearchPage(),
    ScreenDownloadsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext contex, int index, Widget? _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
