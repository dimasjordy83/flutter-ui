import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridSearch extends StatefulWidget {
  const GridSearch({Key? key}) : super(key: key);

  @override
  State<GridSearch> createState() => _GridSearchState();
}

class _GridSearchState extends State<GridSearch> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        if (index == 1 || index == 2 || index == 4 || index == 5) {
          // Display a single widget for combined cells
          return Container(
            color: Colors.amber,
            child: Image.asset(
              'assets/images/instagram/post_2.png',
              fit: BoxFit.cover,
            ),
          );
        } else {
          return Stack(
            children: [
              Container(
                height: 124,
                width: 124,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Image.asset(
                  'assets/images/instagram/post_$index.png',
                  fit: BoxFit.cover,
                ),
              ),
              if (index == 6)
                Positioned(
                  top: 9,
                  right: 5,
                  child: SvgPicture.asset("assets/icons/instagram/cam.svg"),
                ),
            ],
          );
        }
      },
      itemCount: 9,
    );
  }
}
