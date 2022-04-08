import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final String title;
  const CategoryList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.access_time_filled_outlined,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Divider(
          thickness: 1,
        ),
      ),
    );
  }
}
