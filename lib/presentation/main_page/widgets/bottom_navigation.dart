import 'package:flutter/material.dart';
import '../../utilities/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext contex, int newIndex, Widget? _) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            selectedItemColor: appSelectedColor,
            unselectedItemColor: appUnselectedColor,
            backgroundColor: appDarkBackground,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 22,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.play_circle_outline,
                    size: 22,
                  ),
                  label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.emoji_emotions_outlined,
                    size: 22,
                  ),
                  label: 'Fast Laugh'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_outlined,
                    size: 22,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.download_outlined,
                    size: 22,
                  ),
                  label: 'Downloads'),
            ],
          );
        });
  }
}
