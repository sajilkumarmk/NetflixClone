import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/search/search_bloc.dart';
import '../../../domine/core/constants.dart';
import '../../widgets/common_title.dart';
import '../../widgets/main_movie_poster_card.dart';
import '../../widgets/network_faild_widget.dart';

class SearchResulWidget extends StatelessWidget {
  const SearchResulWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonTitleWidget(title: 'Movies & TV'),
          Expanded(child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading == true) {
                return const Center(child: CupertinoActivityIndicator());
              } else if (state.isError == true) {
                return const Center(child: NetworkFaildWidget());
              } else {
                return GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.1 / 1.8,
                  children: List.generate(
                    state.searchData.length,
                    (index) {
                      final moviePoster = state.searchData[index].posterPath;
                      return MainMoviePosterCard(
                          poster: "$imageAppendUrl$moviePoster");
                    },
                  ),
                );
              }
            },
          ))
        ],
      ),
    );
  }
}
