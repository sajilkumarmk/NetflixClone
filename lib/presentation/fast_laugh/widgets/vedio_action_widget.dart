import 'package:flutter/material.dart';

class VedioActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VedioActionWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Icon(
            icon,
            size: 25,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
