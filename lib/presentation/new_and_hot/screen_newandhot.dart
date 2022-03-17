import 'package:flutter/material.dart';
import 'widgets/coming_soon_tabview_widget.dart';
import 'widgets/everyone_watching_tabview_widget.dart';
import 'widgets/tabbar_widget.dart';
import '../widgets/app_bar_widget.dart';

class ScreenNewAndHotPage extends StatelessWidget {
  const ScreenNewAndHotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SafeArea(child: AppBarWidget(title: 'New & Hot')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TabBarWidget(),
            Expanded(
              child: TabBarView(
                children: [
                  ComingSoonTabViewWidget(),
                  EveryOneWatchingTabViewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
