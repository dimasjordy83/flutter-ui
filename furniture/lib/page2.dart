import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        // padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: 250,
                margin: EdgeInsets.fromLTRB(0, 0, 100, 25),
                decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('Discover the most modern furniture',
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 25))),
            Container(
              width: 350,
              height: 50,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 54, 67, 244)),
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            ),
          ],
        ),
      ),
    );
  }
}
