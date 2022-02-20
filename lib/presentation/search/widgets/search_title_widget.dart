import 'package:flutter/material.dart';

class SearchTitleWidget extends StatelessWidget {
  final String title;
  const SearchTitleWidget({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.only(top: 15,bottom: 20),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
