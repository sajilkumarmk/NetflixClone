import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/network_faild_widget.dart';
import '../../../domine/core/constants.dart';
import '../../../application/search/search_bloc.dart';
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
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.isLoading == true) {
                  return const Center(child: CupertinoActivityIndicator());
                } else if (state.isError == true) {
                  return const Center(child: NetworkFaildWidget());
                } else {
                  return ListView.separated(
                    itemBuilder: (ctx, index) {
                      final movie = state.idleData[index];
                      return TopSearchItemWidget(
                        poster: "$imageAppendUrl${movie.backdropPath}",
                        title: movie.title ?? 'No Name',
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return const SizedBox(
                        height: 15,
                      );
                    },
                    itemCount: state.idleData.length,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TopSearchItemWidget extends StatelessWidget {
  final String poster;
  final String title;
  const TopSearchItemWidget(
      {Key? key, required this.poster, required this.title})
      : super(key: key);
  // final _poster =
  //     'https://www.themoviedb.org/t/p/original/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg';
  // final _poster = 'https://images.spot.im/v1/production/wb3jrch8oi8ywi2kl5ea';

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
                  image: NetworkImage(poster), fit: BoxFit.fill),
            )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
