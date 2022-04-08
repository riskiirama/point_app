import 'package:flutter/material.dart';
import 'package:point_app/theme.dart';

class EditProfile extends StatelessWidget {
  final String title;
  final String text;
  const EditProfile({Key? key, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: grey),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
        Divider(thickness: 0.7),
      ],
    );
  }
}
