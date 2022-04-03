import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';

import '../theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Get.toNamed(RouteHelper.onBoarding));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: white,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'POINT',
              style: TextStyle(
                fontSize: 32,
                fontWeight: bold,
                color: white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
