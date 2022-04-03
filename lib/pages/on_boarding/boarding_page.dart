import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';

import '../../theme.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.only(top: 160, left: 60, right: 60),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'POINT',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Everything around you!',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: green,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed(RouteHelper.onBoarding2);
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(color: white, fontSize: 16),
                          ),
                        ),
                      )
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
                onTap: () {},
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
