import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/hot_and_new/every_ones_watching/everyoneswatching_bloc.dart';
import '../../../domine/core/constants.dart';
import '../../widgets/network_faild_widget.dart';
import 'bottom_section_two_widget.dart';
import 'movie_video_card_widget.dart';
import 'netflix_tag_widget.dart';

class EveryOneWatchingTabViewWidget extends StatelessWidget {
  const EveryOneWatchingTabViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<EveryoneswatchingBloc>(context)
          .add(const EveryoneswatchingEvent.everyOnesWatching());
    });
    final screenWidth = MediaQuery.of(context).size.width;
    // const _poster = 'https://images.spot.im/v1/production/wb3jrch8oi8ywi2kl5ea';
    // const _titleCard =
    //     'https://live.staticflickr.com/7841/47197341331_fb0a4e9fa6_b.jpg';
    return BlocBuilder<EveryoneswatchingBloc, EveryoneswatchingState>(
      builder: (context, state) {
        if (state.isloading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        } else if (state.isError) {
          return const NetworkFaildWidget();
        } else {
          return ListView.separated(
            padding: const EdgeInsets.all(5.0),
            itemCount: state.everyoneswatching.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 5,
              );
            },
            itemBuilder: ((context, index) {
              final _backposter = state.everyoneswatching[index].backdropPath;
              final _poster = state.everyoneswatching[index].posterPath;
              final title = state.everyoneswatching[index].originalTitle;
              final overview = state.everyoneswatching[index].overview;
              return Row(
                children: [
                  SizedBox(
                    width: screenWidth - 10,
                    height: screenWidth + 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MovieVideoCardWidget(
                            screenWidth: screenWidth,
                            poster: "$imageAppendUrl$_backposter"),
                        BottomSectionTwoWidget(
                          poster: '$imageAppendUrl$_poster',
                        ),
                        const NetFlixTagWidget(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: title == null
                              ? const Text(
                                  'No Name',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              : Text(
                                  title,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                        overview == null
                            ? const Text(
                                'The movie has no description',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              )
                            : Text(
                                overview,
                                softWrap: true,
                                maxLines: 4,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          );
        }
      },
    );
  }
}
