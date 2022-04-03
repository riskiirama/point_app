import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_app/theme.dart';
import 'package:point_app/widgets/edit_profile.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: green,
          ),
        ),
        backgroundColor: white,
        automaticallyImplyLeading: false,
        elevation: 1,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        children: [
          Center(
            child: Container(
              alignment: Alignment.bottomRight,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: white,
                ),
                color: green,
                shape: BoxShape.circle,
              ),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: white),
                  shape: BoxShape.circle,
                  color: green,
                ),
                child: Icon(
                  Icons.edit,
                  size: 18,
                  color: white,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          EditProfile(
            title: 'Full Name',
            text: 'Aqib Mir',
          ),
          SizedBox(height: 20),
          EditProfile(
            title: 'E-mail',
            text: 'Aqibmir@gmail.com',
          ),
          SizedBox(height: 20),
          EditProfile(
            title: 'User Name',
            text: 'Aqibmir',
          ),
          SizedBox(height: 20),
          EditProfile(
            title: 'Location',
            text: 'Al-khail, Dubai',
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 120,
                height: 34,
                decoration: BoxDecoration(
                  border: Border.all(color: greyDark),
                  borderRadius: BorderRadius.circular(4),
                  color: white,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: grey),
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 34,
                decoration: BoxDecoration(
                  border: Border.all(color: greyDark),
                  borderRadius: BorderRadius.circular(4),
                  color: green,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(color: white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
