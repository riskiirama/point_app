import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';

import '../../theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: green,
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
                            ),
                          ),
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
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
            bottom: 360,
            right: 30,
            left: 240,
            child: Container(
              height: 94,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.welcome);
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
