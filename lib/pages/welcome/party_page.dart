import 'package:flutter/material.dart';

class PartyPage extends StatefulWidget {
  @override
  State<PartyPage> createState() => _PartyPageState();
}

class _PartyPageState extends State<PartyPage> {
  double _currentSliderValue = 20;
  bool isRead = false;

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
          'Party',
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
              Divider(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Point Address',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'House #803, Al- Khail Heights, Dubai',
                style: TextStyle(
                  color: Colors.black,
                ),
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
                    'Other Locations',
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
