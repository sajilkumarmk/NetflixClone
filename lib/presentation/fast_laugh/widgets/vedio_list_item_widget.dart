import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/fast_laugh/widgets/vedio_action_avatar.dart';
import 'package:netflixclone/presentation/fast_laugh/widgets/vedio_action_widget.dart';

class VedioListItemWidget extends StatelessWidget {
  const VedioListItemWidget({
    Key? key,
    required String vedio,
  })  : _vedio = vedio,
        super(key: key);

  final String _vedio;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            // color: Colors.accents[_index % Colors.accents.length],
            image: DecorationImage(
              image: NetworkImage(_vedio),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_off_outlined),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    VedioActionAvatar(),
                    VedioActionWidget(
                        icon: Icons.emoji_emotions_outlined, title: 'LOL'),
                    VedioActionWidget(icon: Icons.add, title: 'My List'),
                    VedioActionWidget(icon: Icons.share, title: 'Share'),
                    VedioActionWidget(icon: Icons.play_arrow, title: 'Play'),
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
