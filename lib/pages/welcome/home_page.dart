import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/routes/route.dart';
import 'package:point_app/theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isRead = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.amber,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: Get.width / 2,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Nearby Now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.defaultDialog(
                                title: '',
                                content: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed(RouteHelper.detail);
                                        },
                                        child: Container(
                                          alignment: Alignment.bottomCenter,
                                          height: 200,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.party_mode,
                                                      size: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      'Party',
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Icon(Icons.favorite_border),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Girls Only Pajama Party',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.grey,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Dubailand Residence, Dubai',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.grey,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '1.8 km',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Time',
                                                style: TextStyle(
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                '9.00 pm',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Date',
                                                style: TextStyle(
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                '14 April 2020',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      isRead
                                          ? Text(
                                              'Girls Pajama Party, Only girls are welcome. The party will start from 9 pm onwards at Skycourts Girls Pajama Party, Only girls are welcome. The party will start from 9 pm onwards at Skycourts Girls Pajama Party, Only girls are welcome. The party will start from 9 pm onwards at Skycourts',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              textAlign: TextAlign.justify,
                                            )
                                          : Text(
                                              'Girls Pajama Party, Only girls are welcome. The party will start from 9 pm onwards at Skycourts Girls Pajama Party, Only girls are welcome. The party will start from 9 pm onwards at Skycourts Girls Pajama Party, Only girls are welcome. The party will start from 9 pm onwards at Skycourts',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              maxLines: 3,
                                              textAlign: TextAlign.justify,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                      GestureDetector(
                                        onTap: () {
                                          isRead = !isRead;
                                          setState(() {});
                                        },
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            isRead ? 'Expand' : 'Read More',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ),
                                      Divider(),
                                      Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sara Hopkins',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color: Colors.grey[500],
                                                      size: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      '1.8 km',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Follow',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Contact Options',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(Icons.message),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(Icons.message),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(Icons.message),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(Icons.message),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              alignment: Alignment.bottomRight,
                              width: Get.width / 2.5,
                              height: 200,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                color: greenDark,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    width: double.infinity,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                      color: green,
                                    ),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(right: 10, bottom: 5),
                                      padding:
                                          EdgeInsets.only(right: 8, left: 5),
                                      alignment: Alignment.center,
                                      width: 60,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: white,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.send_sharp,
                                            size: 10,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            '1.2 mi',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 10, right: 10, top: 5),
                                    child: Column(
                                      children: [
                                        Text(
                                          '50 % off on pizza',
                                          style: TextStyle(
                                              color: black, fontSize: 16),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Get 50% off on Large pizza',
                                          style: TextStyle(
                                              color: grey, fontSize: 10),
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 80,
                                              height: 30,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: white,
                                                  primary: white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  'Party',
                                                  style: TextStyle(
                                                    color: black,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: green,
                                              ),
                                              child: Icon(
                                                Icons.favorite_border,
                                                size: 16,
                                                color: white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Are you looking for?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 9,
                                  offset: Offset(0, 3),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Restaurant',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomRight,
                            width: 150,
                            height: 80,
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green,
                            ),
                            child: Container(
                              padding: EdgeInsets.only(right: 8, left: 5),
                              alignment: Alignment.center,
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.send_sharp,
                                    size: 10,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    '1.2 mi',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40, right: 60, left: 20),
          child: Row(
            children: [
              Icon(
                Icons.dehaze,
                color: Colors.white,
              ),
              SizedBox(width: 40),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 2),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 46,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteHelper.list);
                        },
                        child: Icon(
                          Icons.tune,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 24,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Search',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
