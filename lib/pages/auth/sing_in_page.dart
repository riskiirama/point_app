import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';

import '../../theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenDark,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset('assets/animasi.png'),
                  color: greenDark,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 80, left: 60, right: 60),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(60),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Text(
                        'Please Sign In',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      TextFormField(),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                      SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Forget password?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: green,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(RouteHelper.signUp);
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: green,
                              ),
                            ),
                          ),
                        ],
                      )
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
                  Get.toNamed(RouteHelper.welcome);
                },
                child: Icon(
                  Icons.arrow_forward_rounded,
                  size: 40,
                  color: white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 40,
            child: Text(
              'Welcome\nBack',
              style: TextStyle(
                color: white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
