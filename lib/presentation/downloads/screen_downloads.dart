import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/downloads/downloads_bloc.dart';
import '../../domine/core/constants.dart';
import '../utilities/colors.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/network_faild_widget.dart';

class ScreenDownloadsPage extends StatelessWidget {
  ScreenDownloadsPage({Key? key}) : super(key: key);

  final _sections = [
    const _SmartDownloads(),
    const Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SafeArea(child: AppBarWidget(title: 'Downloads')),
        ),
        body: ListView.separated(
            itemBuilder: (ctx, index) => _sections[index],
            separatorBuilder: (ctx, index) => const SizedBox(
                  height: 25,
                ),
            itemCount: _sections.length));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(children: const [
        Icon(Icons.settings),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Smart Downloads'),
        ),
      ]),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getPosterCard());
    });
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12, left: 30, right: 30),
          child: Text(
            """We will download a peronalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice""",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width - 60,
                child: const Center(child: CupertinoActivityIndicator()),
              );
            } else if (state.isError) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width - 60,
                child: const NetworkFaildWidget(),
              );
            } else {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width - 60,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.33,
                      backgroundColor: Colors.grey[900],
                    ),
                    DownloadImageWidget(
                      posters:
                          '$imageAppendUrl${state.downloads[0].posterPath}',
                      margin: const EdgeInsets.only(
                        right: 180,
                      ),
                      angle: -15,
                    ),
                    DownloadImageWidget(
                      posters:
                          '$imageAppendUrl${state.downloads[1].posterPath}',
                      margin: const EdgeInsets.only(
                        left: 180,
                      ),
                      angle: 15,
                    ),
                    DownloadImageWidget(
                      posters:
                          '$imageAppendUrl${state.downloads[2].posterPath}',
                      margin: const EdgeInsets.only(top: 30),
                      width: 0.33,
                      height: 0.52,
                    )
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    required String posters,
    this.angle = 0,
    required this.margin,
    this.width = 0.3,
    this.height = 0.45,
  })  : _posters = posters,
        super(key: key);

  final String _posters;
  final double angle;
  final double width;
  final double height;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.width * height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          // color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(_posters),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            child: SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: appPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Set up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'See What You Can Download',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
