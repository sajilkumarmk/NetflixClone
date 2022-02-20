import 'package:flutter/material.dart';
// import 'package:netflixclone/core/theme.dart';
import 'package:netflixclone/presentation/downloads/screen_downloads.dart';
import 'package:netflixclone/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflixclone/presentation/home/Screen_home.dart';
import 'package:netflixclone/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:netflixclone/presentation/new_and_hot/screen_newandhot.dart';
import 'package:netflixclone/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    const ScreenHomePage(),
    const ScreenNewAndHotPage(),
    ScreenFastLaughPage(),
   const ScreenSearchPage(),
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
