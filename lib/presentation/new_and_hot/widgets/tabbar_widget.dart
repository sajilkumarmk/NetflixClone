import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 5.0,
      ),
      indicator: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      unselectedLabelColor: Colors.white,
      labelColor: Colors.black,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      tabs: const [
        Tab(
          text: '🍟 Coming Soon',
          height: 35,
        ),
        Tab(
          text: "👀 Everyone's Watching",
          height: 35,
        ),
      ],
    );
  }
}
