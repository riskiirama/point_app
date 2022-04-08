import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';
import 'package:point_app/theme.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.selectedCategory);
                },
                child: Icon(
                  Icons.tune,
                  color: black,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, color: green),
          ),
          centerTitle: true,
          title: Text(
            'List',
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            labelColor: Colors.green,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            indicator: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(20)),
            tabs: [
              Text(
                'Party',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Shopping',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Restaurant',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Offers',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Party',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(itemBuilder: (ctx, index) {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Hookah Party'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Hookah Party Today',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.map),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Hookah Party Today',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 5,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.favorite_border),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Party')
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text('1.8 km')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
