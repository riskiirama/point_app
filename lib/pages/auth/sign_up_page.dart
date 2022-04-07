import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';
import 'package:point_app/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                  child: Image.asset(
                    'assets/animasi.png',
                  ),
                  color: greenDark,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 80, left: 60, right: 60),
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
                  child: ListView(
                    children: [
                      Text(
                        'Please Sign up',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      TextFormField(),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            child: TextFormField(),
                          ),
                          Container(
                            width: 200,
                            child: TextFormField(),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: Text(
                          'You will get and OTP\nCarrier charges my apply',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              Get.toNamed(RouteHelper.signIn);
                            },
                            child: Text(
                              'Sign in',
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
                  Get.toNamed(RouteHelper.verifkasi);
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
              'Ready to\nSend &\nReceive ?',
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
