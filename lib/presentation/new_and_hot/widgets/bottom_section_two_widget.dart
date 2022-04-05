import 'package:flutter/material.dart';

import 'icon_text_button_widget.dart';

class BottomSectionTwoWidget extends StatelessWidget {
  const BottomSectionTwoWidget({
    Key? key,
    required this.poster,
  }) : super(key: key);
  final String poster;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[900],
              image: DecorationImage(
                  image: NetworkImage(poster), fit: BoxFit.fill),
            ),
          ),
          const Spacer(),
          const IconTextButtonWidget(
            icon: Icons.send,
            text: 'Share',
          ),
          const SizedBox(width: 20),
          const IconTextButtonWidget(
            icon: Icons.add,
            text: 'My List',
          ),
          const SizedBox(width: 20),
          const IconTextButtonWidget(
            icon: Icons.play_arrow,
            text: 'Play',
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
