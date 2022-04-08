import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';
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
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.buzz);
            },
            child: CategoryList(
              title: 'Buzz',
            ),
          ),
          CategoryList(
            title: 'Offers',
          ),
          CategoryList(
            title: 'Deals',
          ),
          CategoryList(
            title: 'Events',
          ),
          CategoryList(
            title: 'Announcement',
          ),
          CategoryList(
            title: 'Restaurant',
          ),
          CategoryList(
            title: 'Food & Bevergaes',
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.party);
            },
            child: CategoryList(
              title: 'Party',
            ),
          ),
          CategoryList(
            title: 'Grorecy',
          ),
          CategoryList(
            title: 'Shopping',
          ),
          CategoryList(
            title: 'Salon',
          ),
          CategoryList(
            title: 'Health',
          ),
          CategoryList(
            title: 'Entertainment',
          ),
          CategoryList(
            title: 'Sports',
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text(
              'Other',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
