import 'package:flutter/material.dart';

class BiodataProfile extends StatelessWidget {
  const BiodataProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 348,
          height: 96,
          // color: Colors.green,
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 96,
                        width: 96,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            border:
                                Border.all(color: Color(0xFFC7C7CC), width: 2)),
                      ),
                      Container(
                        height: 86,
                        width: 86,
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 93, 68, 68),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 205,
                    margin: EdgeInsets.fromLTRB(27, 0, 0, 0),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              Text(
                                "320",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Post",
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Text(
                                "320",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Post",
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Text(
                                "320",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Post",
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
