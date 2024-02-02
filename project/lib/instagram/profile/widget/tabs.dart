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
      width: MediaQuery.of(context).size.width,
      height: 44,
      // color: Colors.amber,
      child: Row(
        children: [
          Container(
              width: MediaQuery.of(context).size.width / 2,
              // color: const Color.fromARGB(255, 255, 255, 255),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 250, 250),
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF262626), // Warna border
                      width: 1.0, // Lebar border
                    ),
                  )),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 23,
                      height: 23,
                      // color: Colors.teal,
                      child: SvgPicture.asset("assets/icons/instagram/tab.svg"),
                    ),
                  )
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width / 2,
              // color: const Color.fromARGB(255, 255, 255, 255),
              color: Color.fromARGB(255, 250, 250, 250),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 23,
                      height: 23,
                      // color: Colors.teal,
                      child:
                          SvgPicture.asset("assets/icons/instagram/person.svg"),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
