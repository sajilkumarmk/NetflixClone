import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/fast_laugh/fastlaugh_bloc.dart';
import '../widgets/network_faild_widget.dart';
import 'widgets/vedio_list_item_widget.dart';

class ScreenFastLaughPage extends StatelessWidget {
  const ScreenFastLaughPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<FastlaughBloc>(context)
          .add(const FastlaughEvent.started());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastlaughBloc, FastlaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            } else if (state.isError) {
              return const Center(child: NetworkFaildWidget());
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videoList.length, (index) {
                  return VedioListItemInheritedWidget(
                    widget: VedioListItemWidget(index: index),
                    movieData: state.videoList[index],
                  );
                }),
              );
            }
          },
        ),
      ),
    );
  }
}
