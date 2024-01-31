import 'package:flutter/material.dart';

class Myicon extends StatelessWidget {
  const Myicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("icon"),
      ),
      body: Container(
        color: Colors.blue[200],
        padding: const EdgeInsets.all(20),
        child: const Row(
          children: [
            Icon(
              Icons.home,
              size: 32,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 36,
            ),
          ],
        ),
      ),
    );
  }
}
