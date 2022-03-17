import 'package:flutter/material.dart';
import 'bottom_section_one_widget.dart';
import 'datewidget.dart';
import 'movie_video_card_widget.dart';
import 'netflix_tag_widget.dart';

class ComingSoonTabViewWidget extends StatelessWidget {
  const ComingSoonTabViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const _poster =
        'https://images.thedirect.com/media/article_full/spider-man-no-way-home-green-goblin-electro-doc-ock.jpg';

    return ListView.builder(
      padding: const EdgeInsets.only(top: 5),
      itemCount: 10,
      itemBuilder: ((context, index) {
        return Row(
          children: [
            DateWidget(screenWidth: screenWidth),
            SizedBox(
              width: screenWidth - 60,
              height: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieVideoCardWidget(
                      screenWidth: screenWidth, poster: _poster),
                  const BottomSectionOneWidget(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Coming On Friday',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
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
                    "Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence-and her relationship-into a tailspin.",
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
