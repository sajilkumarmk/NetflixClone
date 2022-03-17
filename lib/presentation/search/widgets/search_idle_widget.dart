import 'package:flutter/cupertino.dart';
import '../../widgets/common_title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonTitleWidget(title: 'Top Searches'),
          Expanded(
            child: ListView.separated(
              itemBuilder: (ctx, index) {
                return const TopSearchItemWidget();
              },
              separatorBuilder: (ctx, index) {
                return const SizedBox(
                  height: 15,
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class TopSearchItemWidget extends StatelessWidget {
  const TopSearchItemWidget({Key? key}) : super(key: key);
  // final _poster =
  //     'https://www.themoviedb.org/t/p/original/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg';
  final _poster = 'https://images.spot.im/v1/production/wb3jrch8oi8ywi2kl5ea';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: NetworkImage(_poster), fit: BoxFit.fill),
            )),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'Movie Name',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Icon(
            CupertinoIcons.play_circle,
            size: 40,
          ),
        ),
      ],
    );
  }
}
