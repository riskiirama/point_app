import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List<String> imagesList = [
    'assets/animasi.png',
    'assets/animasi.png',
    'assets/animasi.png',
    'assets/animasi.png',
  ];

  bool isRead = false;
  bool like = true;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: height,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
            items: imagesList
                .map(
                  (item) => Stack(
                    children: [
                      Container(
                        child: Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            height: height,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imagesList.map((urlOfItem) {
                            int index = imagesList.indexOf(urlOfItem);
                            return Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? Colors.white
                                    : Color.fromRGBO(0, 0, 0, 0.3),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                )
                .toList(),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.only(top: height - 540),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/animasi.png',
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Party'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        like = !like;
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: like
                            ? Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Girls Only Pajama Party'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.map,
                      size: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Dubailand Residence, Dubai',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.article_rounded,
                      size: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1.8 Km',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Time',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '9.00 pm',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '14 April 2020',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Point Address',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'House #803, Al - Khail Heights',
                      style: TextStyle(),
                    ),
                  ],
                ),
                Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 10,
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
                    SizedBox(
                      height: 5,
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
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sara Hopkins'),
                            Row(
                              children: [
                                Icon(Icons.map),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Description',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                        Text('Follow'),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Text(
                  'Choose Contact Options',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
