import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixclone/presentation/widgets/network_faild_widget.dart';
import '../../../application/hot_and_new/hotandnew_bloc.dart';
import '../../../domine/core/constants.dart';
import 'bottom_section_one_widget.dart';
import 'datewidget.dart';
import 'movie_video_card_widget.dart';
import 'netflix_tag_widget.dart';

class ComingSoonTabViewWidget extends StatelessWidget {
  const ComingSoonTabViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HotandnewBloc>(context)
          .add(const HotandnewEvent.commingSoon());
    });

    final screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        final movieData = state.commingsoon;

        if (state.isloading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        } else if (state.isError) {
          return const NetworkFaildWidget();
        } else {
          return ListView.builder(
            padding: const EdgeInsets.only(top: 5),
            itemCount: movieData.length,
            itemBuilder: ((context, index) {
              final poster = movieData[index].backdropPath;
              final title = movieData[index].originalTitle;
              final overview = movieData[index].overview;
              final date = movieData[index].releaseDate;
              return Row(
                children: [
                  DateWidget(
                    screenWidth: screenWidth,
                    date: date!,
                  ),
                  SizedBox(
                    width: screenWidth - 60,
                    height: screenWidth + 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MovieVideoCardWidget(
                            screenWidth: screenWidth,
                            poster: "$imageAppendUrl$poster"),
                        BottomSectionOneWidget(
                          originalTitle: title,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Coming On Friday',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
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
                                  maxLines: 1,
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
