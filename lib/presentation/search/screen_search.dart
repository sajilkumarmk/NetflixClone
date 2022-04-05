import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domine/core/debounce/debounce.dart';
import 'widgets/search_result_widget.dart';

import '../../application/search/search_bloc.dart';
import 'widgets/search_idle_widget.dart';

class ScreenSearchPage extends StatelessWidget {
  ScreenSearchPage({Key? key}) : super(key: key);

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.idle());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  if (value.isEmpty) {
                    _debouncer.run(() {
                      BlocProvider.of<SearchBloc>(context)
                          .add(const SearchEvent.idle());
                    });
                  } else {
                    _debouncer.run(() {
                      BlocProvider.of<SearchBloc>(context)
                          .add(SearchEvent.search(movieQuery: value));
                    });
                  }
                },
              ),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchData.isEmpty) {
                    return const SearchIdleWidget();
                  } else {
                    return const SearchResulWidget();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
