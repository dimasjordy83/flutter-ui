import 'package:flutter/material.dart';

class Mypagetwo extends StatefulWidget {
  const Mypagetwo({super.key});

  @override
  State<Mypagetwo> createState() => _MypagetwoState();
}

class _MypagetwoState extends State<Mypagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page two"),
      ),
      body: Container(
        child: Text("Page 2"),
      ),
    );
  }
}
