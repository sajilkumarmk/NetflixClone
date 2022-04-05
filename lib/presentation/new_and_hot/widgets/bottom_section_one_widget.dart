import 'package:flutter/material.dart';

class BottomSectionOneWidget extends StatelessWidget {
  final String? originalTitle;
  const BottomSectionOneWidget({
    Key? key,
    this.originalTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
            width: 200,
            child: originalTitle == null
                ? const Text(
                    'No Name',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                : Text(
                    originalTitle!,
                    // overflow: TextOverflow.fade,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
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
