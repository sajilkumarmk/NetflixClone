import 'package:flutter/material.dart';
import 'bottom_section_two_widget.dart';
import 'movie_video_card_widget.dart';
import 'netflix_tag_widget.dart';

class EveryOneWatchingTabViewWidget extends StatelessWidget {
  const EveryOneWatchingTabViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const _poster = 'https://images.spot.im/v1/production/wb3jrch8oi8ywi2kl5ea';
    const _titleCard =
        'https://live.staticflickr.com/7841/47197341331_fb0a4e9fa6_b.jpg';
    return ListView.builder(
      padding: const EdgeInsets.all(5.0),
      itemCount: 10,
      itemBuilder: ((context, index) {
        return Row(
          children: [
            SizedBox(
              width: screenWidth - 10,
              height: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieVideoCardWidget(
                      screenWidth: screenWidth, poster: _poster),
                  const BottomSectionTwoWidget(
                    poster: _titleCard,
                  ),
                  const NetFlixTagWidget(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Movie Name',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Text(
                    "Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence-and her relationship- into a tailspin.",
                    style: TextStyle(
                      fontSize: 15,
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
}
