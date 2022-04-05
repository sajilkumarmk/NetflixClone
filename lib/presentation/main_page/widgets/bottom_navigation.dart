import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Colors.black,
      // decoration: BoxDecoration(
      //   color: Colors.black,
      //   border: Border.all(color: Colors.grey[900]!),
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(20),
      //     topRight: Radius.circular(20),
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (BuildContext ctx, int newIndex, Widget? _) {
              return IconButton(
                onPressed: () {
                  indexChangeNotifier.value = 0;
                  // print(newIndex);
                },
                icon: indexChangeNotifier.value == 0
                    ? const Icon(
                        Icons.home_filled,
                        size: 30,
                      )
                    : const Icon(
                        Icons.home_outlined,
                        // color: Colors.grey,
                      ),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (BuildContext ctx, int newIndex, Widget? _) {
              return IconButton(
                onPressed: () {
                  indexChangeNotifier.value = 1;
                  // print(newIndex);
                },
                icon: indexChangeNotifier.value == 1
                    ? const Icon(
                        Icons.play_circle_fill,
                        size: 30,
                      )
                    : const Icon(
                        Icons.play_circle_outline,
                        // color: Colors.grey,
                      ),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (BuildContext ctx, int newIndex, Widget? _) {
              return IconButton(
                onPressed: () {
                  indexChangeNotifier.value = 2;
                  // print(newIndex);
                },
                icon: indexChangeNotifier.value == 2
                    ? const Icon(
                        Icons.emoji_emotions,
                        size: 30,
                      )
                    : const Icon(
                        Icons.emoji_emotions_outlined,
                        // color: Colors.grey,
                      ),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (BuildContext ctx, int newIndex, Widget? _) {
              return IconButton(
                onPressed: () {
                  indexChangeNotifier.value = 3;
                  // print(newIndex);
                },
                icon: indexChangeNotifier.value == 3
                    ? const Icon(
                        Icons.search,
                        size: 30,
                      )
                    : const Icon(
                        Icons.search_outlined,
                        // color: Colors.grey,
                      ),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (BuildContext ctx, int newIndex, Widget? _) {
              return IconButton(
                onPressed: () {
                  indexChangeNotifier.value = 4;
                  // print(newIndex);
                },
                icon: indexChangeNotifier.value == 4
                    ? const Icon(
                        Icons.download,
                        size: 30,
                      )
                    : const Icon(
                        Icons.download_outlined,
                        // color: Colors.grey,
                      ),
              );
            },
          ),
        ],
      ),
    );
    // return ValueListenableBuilder(
    //     valueListenable: indexChangeNotifier,
    //     builder: (BuildContext contex, int newIndex, Widget? _) {
    //       return BottomNavigationBar(
    //         type: BottomNavigationBarType.fixed,
    //         currentIndex: newIndex,
    //         onTap: (index) {
    //           indexChangeNotifier.value = index;
    //         },
    //         selectedItemColor: appSelectedColor,
    //         unselectedItemColor: appUnselectedColor,
    //         backgroundColor: appDarkBackground,
    //         items: const [
    //           BottomNavigationBarItem(
    //               icon: Icon(
    //                 Icons.home_outlined,
    //                 size: 22,
    //               ),
    //               label: 'Home'),
    //           BottomNavigationBarItem(
    //               icon: Icon(
    //                 Icons.play_circle_outline,
    //                 size: 22,
    //               ),
    //               label: 'New & Hot'),
    //           BottomNavigationBarItem(
    //               icon: Icon(
    //                 Icons.emoji_emotions_outlined,
    //                 size: 22,
    //               ),
    //               label: 'Fast Laugh'),
    //           BottomNavigationBarItem(
    //               icon: Icon(
    //                 Icons.search_outlined,
    //                 size: 22,
    //               ),
    //               label: 'Search'),
    //           BottomNavigationBarItem(
    //               icon: Icon(
    //                 Icons.download_outlined,
    //                 size: 22,
    //               ),
    //               label: 'Downloads'),
    //         ],
    //       );
    //     });
  }
}
