import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortVideoWidget extends StatefulWidget {
  final String videoUrl;
  const ShortVideoWidget({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  State<ShortVideoWidget> createState() => _ShortVideoWidgetState();
}

class _ShortVideoWidgetState extends State<ShortVideoWidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl)
      // _videoPlayerController.initialize().then((value) {
      //   setState(() {});
      // });
      // _videoPlayerController.setLooping(true);
      // _videoPlayerController.play();
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => _videoPlayerController.play());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = _videoPlayerController.value.volume == 0;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        _videoPlayerController.setVolume(isMuted ? 1 : 0);
        isMuted
            ? const Icon(
                Icons.volume_off_outlined,
                color: Colors.grey,
              )
            : const Icon(
                Icons.volume_up_outlined,
                color: Colors.white,
              );
      },
      onLongPress: () {
        _videoPlayerController.value.isPlaying
            ? _videoPlayerController.pause()
            : _videoPlayerController.play();
      },
      onLongPressUp: () {
        _videoPlayerController.play();
      },
      child: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: _videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                )
              : const Center(
                  child: CupertinoActivityIndicator(),
                ),
        ),
        isMuted
            ? Container(
                alignment: Alignment.center,
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black38,
                  child: Icon(
                    Icons.volume_off_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              )
            : Container(),
        _videoPlayerController.value.isPlaying
            ? Container()
            : Container(
                alignment: Alignment.center,
                color: Colors.black26,
              ),
      ]),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
