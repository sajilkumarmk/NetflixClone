import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/common_title.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/main_movie_widget.dart';
import 'widgets/movie_poster_list_widget.dart';
import 'widgets/section_3_widget.dart';
import 'widgets/top10_movie_list_widget.dart';

ValueNotifier<bool> scrollNotofier = ValueNotifier(true);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotofier,
          builder: (BuildContext context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection scrollDirection = notification.direction;
                // print(scrollDirection);
                if (scrollDirection == ScrollDirection.reverse) {
                  scrollNotofier.value = false;
                } else if (scrollDirection == ScrollDirection.forward) {
                  scrollNotofier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  Padding(
                    padding: scrollNotofier.value == true
                        ? const EdgeInsets.only(top: 55)
                        : const EdgeInsets.only(),
                    child: ListView(
                      children: const [
                        MainMovieWidget(),
                        Section3Widget(),
                        CommonTitleWidget(title: 'Released in the Past Year'),
                        MoviePosterList(),
                        CommonTitleWidget(title: 'Trending Now'),
                        MoviePosterList(),
                        CommonTitleWidget(
                            title: 'Top 10 Tv Shows In India Today'),
                        Top10MovieListWidget(),
                        CommonTitleWidget(title: 'Tense Dramas'),
                        MoviePosterList(),
                        CommonTitleWidget(title: 'South Indian Cinema'),
                        MoviePosterList(),
                      ],
                    ),
                  ),
                  scrollNotofier.value == true
                      ? const AppBarWidget()
                      : const SizedBox(
                          height: 1,
                        ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
