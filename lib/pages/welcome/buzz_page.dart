import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuzzPage extends StatefulWidget {
  @override
  State<BuzzPage> createState() => _BuzzPageState();
}

class _BuzzPageState extends State<BuzzPage> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.green,
        ),
        title: Text(
          'Buzz',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Add Photo')
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Headline',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Party Timing Changed',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Description 1',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'All Girls Pajama Party Timing changed',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Description 2',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'New Timings are 10:30 PM Tuesday.',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Divider(),
              Text(
                'Reach',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              Slider(
                activeColor: Colors.green,
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reach',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                    size: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dubailand Residence, Dubai',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dubailand Residence, Dubai',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dubailand Residence, Dubai',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
