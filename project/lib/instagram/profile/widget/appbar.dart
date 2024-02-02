import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarProfile extends StatelessWidget {
  const AppbarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 366,
      // color: Colors.amber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: Row(
              children: [
                Container(
                  width: 310,
                  height: 50,
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SizedBox(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 12,
                              width: 9,
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: SvgPicture.asset(
                                  "assets/icons/instagram/lock.svg"),
                            ),
                            Text(
                              "jacob_w",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(
                                      0xFF262626) // Ukuran teks diatur di sini
                                  ),
                            ),
                            Container(
                              height: 7,
                              width: 11,
                              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: SvgPicture.asset(
                                  "assets/icons/instagram/down.svg"),
                            )
                          ],
                        )
                            //  SvgPicture.asset("assets/icons/Score.svg")
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 21,
                  height: 18,
                  // color: Colors.blue,
                  child: SvgPicture.asset("assets/icons/instagram/drawer.svg"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
