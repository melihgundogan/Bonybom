import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print("lkjhgfdcfgh");
            },
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.grey.shade700,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              print("1111111111");
            },
            child: Icon(
              Icons.cancel_outlined,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
