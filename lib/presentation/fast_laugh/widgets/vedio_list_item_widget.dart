import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../application/fast_laugh/fastlaugh_bloc.dart';
import '../../../domine/downloads/models/downloads.dart';
import 'short_video_widget.dart';
import 'vedio_action_avatar.dart';
import 'vedio_action_widget.dart';

class VedioListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VedioListItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VedioListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VedioListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VedioListItemInheritedWidget>();
  }
}

class VedioListItemWidget extends StatelessWidget {
  const VedioListItemWidget({
    Key? key,
    required int index,
  })  : _index = index,
        super(key: key);

  final int _index;

  @override
  Widget build(BuildContext context) {
    final videoUrl = videoUrlList[_index % videoUrlList.length];
    // final _isliked = VedioListItemInheritedWidget.of(context)!.isliked;
    return Stack(
      children: [
        ShortVideoWidget(videoUrl: videoUrl),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Fast_Laugh',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const VedioActionAvatar(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VedioActionWidget(
                      icon: Icons.emoji_emotions_outlined,
                      title: 'LOL',
                    ),
                    const VedioActionWidget(icon: Icons.add, title: 'My List'),
                    GestureDetector(
                      onTap: () {
                        Share.share(videoUrl);
                      },
                      child: const VedioActionWidget(
                        icon: Icons.send,
                        title: 'Share',
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
