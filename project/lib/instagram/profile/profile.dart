import 'package:flutter/material.dart';
import 'package:project/instagram/profile/widget/appbar.dart';
import 'package:project/instagram/profile/widget/biodata.dart';
import 'package:project/instagram/profile/widget/edit_profile.dart';
import 'package:project/instagram/profile/widget/name.dart';
import 'package:project/instagram/profile/widget/stories.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              const AppbarProfile(),
              SizedBox(
                height: 110,
                width: 348,
                child: BiodataProfile(),
              ),
              NameProfile(),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: EditeProfile(),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Stories()
            ],
          )),
    );
  }
}
