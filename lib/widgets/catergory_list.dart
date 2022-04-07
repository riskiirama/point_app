import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.access_time_filled_outlined,
      ),
      title: Text('wwww'),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Divider(
          thickness: 1,
        ),
      ),
    );
  }
}
