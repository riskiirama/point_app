import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/theme.dart';
import 'package:point_app/widgets/catergory_list.dart';

class SelectedCategory extends StatelessWidget {
  const SelectedCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: green,
          ),
        ),
        title: Text(
          'Select Category',
          style: TextStyle(
            color: black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CategoryList(),
          CategoryList(),
          CategoryList(),
          CategoryList(),
          CategoryList(),
          CategoryList(),
          CategoryList(),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('Other'),
          ),
        ],
      ),
    );
  }
}
