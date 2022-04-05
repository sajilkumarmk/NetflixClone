import 'package:flutter/material.dart';
import '../../../domine/core/constants.dart';
import 'vedio_list_item_widget.dart';

class VedioActionAvatar extends StatelessWidget {
  const VedioActionAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieData = VedioListItemInheritedWidget.of(context)?.movieData;
    final posterPath = movieData?.posterPath;
    final title = movieData?.title;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: (posterPath == null)
                  ? null
                  : NetworkImage("$imageAppendUrl$posterPath"),
            ),
          ),
          title == null
              ? const Text(
                  'No Name',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Text(
                  title,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ],
      ),
    );
  }
}
/*
m
*/
