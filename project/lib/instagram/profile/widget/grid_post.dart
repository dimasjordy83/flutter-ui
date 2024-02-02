import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridPost extends StatefulWidget {
  const GridPost({super.key});

  @override
  State<GridPost> createState() => _GridPostState();
}

class _GridPostState extends State<GridPost> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        bool showIcon = index == 4; // Tampilkan ikon hanya untuk indeks ganjil

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
                  child: SvgPicture.asset("assets/icons/instagram/cam.svg")),
          ],
        );
      },
      itemCount: 9,
    );
  }
}
