import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/search/search_bloc.dart';
import 'widgets/search_idle_widget.dart';

class ScreenSearchPage extends StatelessWidget {
  const ScreenSearchPage({Key? key}) : super(key: key);

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
                // prefixInsets: const EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white),
              ),
              // const SearchResulWidget(),
              const SearchIdleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
