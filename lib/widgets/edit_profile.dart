import 'package:flutter/material.dart';

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
        Text(title),
        TextFormField(
          decoration: InputDecoration(
            hintText: text,
          ),
        ),
      ],
    );
  }
}
