import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    Key? key,
    required this.screenWidth,
    required this.date,
  }) : super(key: key);

  final double screenWidth;
  final String date;

  @override
  Widget build(BuildContext context) {
    final _date = parseDate(date);
    // print("${_date[1]} ${_date[2]}");
    return SizedBox(
      width: 60,
      height: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            _date[0],
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            _date[1],
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  List<String> parseDate(String date) {
    final parsedDate = DateTime.parse(date);
    final _date = DateFormat.MMMd().format(parsedDate);
    final _splitDate = _date.split(' ');
    return _splitDate;
  }
}
