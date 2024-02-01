import 'package:flutter/material.dart';
import 'package:project/lession/navigator/pagetwo.dart';

class Mypageone extends StatefulWidget {
  const Mypageone({super.key});

  @override
  State<Mypageone> createState() => _MypageoneState();
}

class _MypageoneState extends State<Mypageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paage One"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Mypagetwo()));
              },
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
