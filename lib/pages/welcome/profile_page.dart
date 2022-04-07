import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';
import 'package:point_app/theme.dart';
import 'package:point_app/widgets/received_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
                  color: greenDark,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 40, left: 20, right: 20),
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
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => Get.toNamed(RouteHelper.editProfile),
                              child: Icon(
                                Icons.edit,
                                size: 24,
                                color: green,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'Aqib Shabir',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Center(
                        child: Text(
                          'Al-Khail Heights, Dubai',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: Container(
                          child: ContainedTabBarView(
                            tabBarProperties: TabBarProperties(
                              height: 32.0,
                              indicatorColor: Colors.greenAccent,
                              indicatorWeight: 2.0,
                              labelColor: green,
                              unselectedLabelColor: Colors.grey[400],
                            ),
                            tabs: [
                              Text(
                                'Received',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Sent',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Favourites',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                            views: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ReceivedCard(),
                                        ReceivedCard(),
                                        ReceivedCard(),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ReceivedCard(),
                                        ReceivedCard(),
                                        ReceivedCard(),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ReceivedCard(),
                                        ReceivedCard(),
                                        ReceivedCard(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(color: Colors.green),
                              Container(color: Colors.amber),
                            ],
                            onChange: (index) => print(index),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 140,
            right: 40,
            left: 40,
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                border: Border.all(color: white),
                color: green,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward_rounded,
                size: 40,
                color: white,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.setting);
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.settings,
                      color: grey,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
