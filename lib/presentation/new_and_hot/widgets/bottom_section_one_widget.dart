import 'package:flutter/material.dart';

class BottomSectionOneWidget extends StatelessWidget {
  const BottomSectionOneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Movie Name',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Column(
            children: const [
              Icon(Icons.notifications_active_outlined),
              Text(
                'Remind Me',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: const [
              Icon(Icons.info_outline),
              Text(
                'Info',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
