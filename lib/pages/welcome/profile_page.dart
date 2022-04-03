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
      backgroundColor: green,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                color: green,
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                  color: white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => Get.toNamed(RouteHelper.editProfile),
                          child: Icon(
                            Icons.edit,
                            size: 18,
                            color: green,
                          ),
                        ),
                      ],
                    ),
                    Text('Aqib Shabir'),
                    SizedBox(height: 20),
                    Text('Al-Khail Heights, Dubai'),
                    SizedBox(height: 20),
                    Container(
                      height: 435,
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
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 140,
            right: 0,
            left: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: white),
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
