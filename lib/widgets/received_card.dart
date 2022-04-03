import 'package:flutter/material.dart';

class ReceivedCard extends StatelessWidget {
  const ReceivedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, right: 10),
      alignment: Alignment.bottomRight,
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.6),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.restore_from_trash_rounded,
          size: 14,
        ),
      ),
    );
  }
}
