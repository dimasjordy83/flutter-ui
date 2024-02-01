import 'package:flutter/material.dart';

class Mypop extends StatefulWidget {
  const Mypop({super.key});

  @override
  State<Mypop> createState() => _MypopState();
}

class _MypopState extends State<Mypop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator pop"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
