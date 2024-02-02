import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 343,
      // color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 12,
          ),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        border: Border.all(color: Color(0xFFC7C7CC), width: 2)),
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    margin: EdgeInsets.fromLTRB(23, 23, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: SvgPicture.asset("assets/icons/instagram/add.svg"),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "New",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        border: Border.all(color: Color(0xFFC7C7CC), width: 2)),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    margin: EdgeInsets.fromLTRB(4.1, 4.1, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 93, 68, 68),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Image.asset("assets/images/instagram/friends.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Friends",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        border: Border.all(color: Color(0xFFC7C7CC), width: 2)),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    margin: EdgeInsets.fromLTRB(4.1, 4.1, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 93, 68, 68),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Image.asset("assets/images/instagram/sport.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Sport",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        border: Border.all(color: Color(0xFFC7C7CC), width: 2)),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    margin: EdgeInsets.fromLTRB(4.1, 4.1, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 93, 68, 68),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Image.asset("assets/images/instagram/desain.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Design",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
