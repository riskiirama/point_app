import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';

import '../../theme.dart';

class OnBoarding7Page extends StatelessWidget {
  const OnBoarding7Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 100, left: 40, right: 40),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ready to\nSend and\nReceive',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'And voila!\nSend and receive information in\nyour locality in real-time.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 360,
            right: 30,
            left: 240,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: green,
                shape: BoxShape.circle,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.signUp);
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 50,
                  color: white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
