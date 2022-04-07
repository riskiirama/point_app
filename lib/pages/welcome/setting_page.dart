import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/theme.dart';

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  double _currentSliderValue = 20;
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: green,
          ),
        ),
        title: Text(
          'Setting',
          style: TextStyle(
            color: black,
          ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                'Done',
                style: TextStyle(color: green, fontSize: 18),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LOCATION PREFERENCES',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Al-Khail Heights, Dubai, UAE',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                'Location',
                style: TextStyle(
                  color: Colors.black,
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
                    'Stadards',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'KM.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: Text(
                      'Km',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Mi.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                'NOTIFICATIONS',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Divider(),
              SwitchListTile(
                title: const Text('New Buzz'),
                value: _lights,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
              ),
              Divider(),
              SwitchListTile(
                title: const Text('Message'),
                value: _lights,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
              ),
              Divider(),
              SwitchListTile(
                title: const Text('Favourite'),
                value: _lights,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
              ),
              Divider(),
              SwitchListTile(
                title: const Text('In-App Vibrations'),
                value: _lights,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
              ),
              Divider(),
              SwitchListTile(
                title: const Text('In-App Sounds'),
                value: _lights,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
              ),
              Divider(),
              Text(
                'CONTACT US',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Divider(),
              Center(
                child: Text(
                  'Help & Support',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              Center(
                child: Text(
                  'Rate us',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              Center(
                child: Text(
                  'Share POINT',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              Text(
                'LEGAL',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              ListTile(
                title: Text('Privacy Policy'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text('Terms of Service'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text('Licenses'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
              Divider(),
              Divider(),
              Center(
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              Center(
                child: Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              Divider(),
              Center(
                child: Text(
                  'Delete Account',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
