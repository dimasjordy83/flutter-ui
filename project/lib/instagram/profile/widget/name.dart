import 'package:flutter/material.dart';

class NameProfile extends StatelessWidget {
  const NameProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 70,
      // color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jacob West",
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF262626),
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "Digital goodies designer ",
                  style: TextStyle(fontSize: 12, color: Color(0xFF262626)),
                ),
                Text(
                  "@pixsellz ",
                  style: TextStyle(fontSize: 12, color: Color(0xFF05386B)),
                ),
              ],
            ),
            Text(
              "Everything is designed.",
              style: TextStyle(fontSize: 12, color: Color(0xFF262626)),
            ),
          ],
        ),
      ),
    );
  }
}
