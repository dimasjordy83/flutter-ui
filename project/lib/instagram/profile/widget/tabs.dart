import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabsProfile extends StatefulWidget {
  const TabsProfile({super.key});

  @override
  State<TabsProfile> createState() => _TabsProfileState();
}

class _TabsProfileState extends State<TabsProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 44,
      color: Colors.amber,
      child: Center(
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 2,
                color: const Color.fromARGB(255, 255, 255, 255),
                // decoration: BoxDecoration(
                //     border: Border(
                //         bottom: BorderSide(color: Colors.black, width: 2))),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 23,
                        height: 23,
                        // color: Colors.teal,
                        child:
                            SvgPicture.asset("assets/icons/instagram/tab.svg"),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
