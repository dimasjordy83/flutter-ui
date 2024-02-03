import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhotoGrid extends StatefulWidget {
  const PhotoGrid({super.key});

  @override
  State<PhotoGrid> createState() => _PhotoGridState();
}

class _PhotoGridState extends State<PhotoGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
          color: Colors.amber,
          child: Row(
            children: [
              Container(
                  height: 250,
                  width: 117.5,
                  color: Colors.red,
                  child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Column(
                        children: [
                          Container(
                            height: 124,
                            width: 117.5,
                            color: const Color.fromARGB(255, 188, 167, 165),
                          ),
                          Container(
                            height: 124,
                            width: 117.5,
                            color: Color.fromARGB(255, 12, 92, 32),
                          ),
                        ],
                      ))),
              Container(
                height: 250,
                width: 232,
                padding: EdgeInsets.all(1),
                color: Color.fromARGB(255, 0, 255, 123),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 234,
          color: Colors.black,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemBuilder: (BuildContext context, int index) {
              bool showIcon = index == 1 || index == 2;

              return Stack(
                children: [
                  Container(
                    height: 124,
                    width: 124,
                    color: Colors.tealAccent,
                    child: Positioned(
                      child: Image.asset(
                        'assets/images/instagram/post_$index.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (showIcon)
                    Positioned(
                        top: 9,
                        right: 5,
                        child:
                            SvgPicture.asset("assets/icons/instagram/cam.svg")),
                ],
              );
            },
            itemCount: 6,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          color: Colors.amber,
          child: Row(
            children: [
              Container(
                height: 250,
                width: 232,
                padding: EdgeInsets.all(1),
                color: Color.fromARGB(255, 0, 255, 123),
              ),
              Container(
                  height: 250,
                  width: 117.5,
                  color: Colors.red,
                  child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Column(
                        children: [
                          Container(
                            height: 124,
                            width: 117.5,
                            color: const Color.fromARGB(255, 188, 167, 165),
                          ),
                          Container(
                            height: 124,
                            width: 117.5,
                            color: Color.fromARGB(255, 12, 92, 32),
                          ),
                        ],
                      ))),
            ],
          ),
        ),
      ],
    );
  }
}
