import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';
import '../../theme.dart';

class OnBoarding6Page extends StatelessWidget {
  const OnBoarding6Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset('assets/animasi.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 100, left: 40, right: 40),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 8,
                        blurRadius: 6,
                        offset: Offset(0, 14),
                      ),
                    ],
                    color: white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enable\nNotifications',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'This needs to stay open so that you don\'t miss out\non the fun of real-time feed from your local.',
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
            bottom: 340,
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
                  Get.toNamed(RouteHelper.onBoarding7);
                },
                child: Icon(
                  Icons.arrow_forward_rounded,
                  size: 40,
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
