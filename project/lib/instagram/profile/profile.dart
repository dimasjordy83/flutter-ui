import 'package:flutter/material.dart';
import 'package:project/instagram/profile/widget/appbar.dart';
import 'package:project/instagram/profile/widget/biodata.dart';
import 'package:project/instagram/profile/widget/edit_profile.dart';
import 'package:project/instagram/profile/widget/name.dart';
import 'package:project/instagram/profile/widget/stories.dart';
import 'package:project/instagram/profile/widget/tabs.dart';
import 'package:project/instagram/profile/widget/grid_post.dart';
import 'package:project/instagram/profile/widget/bottom_navigator.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 250, 250, 250),
          child: Column(
            children: [
              const AppbarProfile(),
              SizedBox(
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: BiodataProfile(),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: NameProfile(),
              ),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: EditeProfile(),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Stories(),
              SizedBox(height: 15),
              Stack(
                children: [
                  const Column(
                    children: [
                      SizedBox(
                        height: 19,
                      ),
                      SizedBox(
                        height: 374,
                        child: GridPost(),
                      ),
                    ],
                  ),
                  TabsProfile(),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
