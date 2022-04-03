import 'package:flutter/material.dart';
import 'package:point_app/theme.dart';
import 'package:get/get.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Message',
          style: TextStyle(color: black),
        ),
        actions: [
          Center(
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                'Edit',
                style: TextStyle(
                  color: green,
                ),
              ),
            ),
          ),
        ],
      ),
      body: context.responsiveValue(
        mobile: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(),
                  title: Text('data'),
                  subtitle: Text('data'),
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10);
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
