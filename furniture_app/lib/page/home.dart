import 'package:flutter/material.dart';
import 'package:furniture_app/page/widgets/headline.dart';
import 'package:furniture_app/page/widgets/topbar.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(5), child: MyTopBar()),
    );
  }
}
