import 'package:flutter/material.dart';
import 'package:furniture_app/page/detail/widget.dart/appbar.dart';
import 'package:furniture_app/page/detail/widget.dart/container_detail.dart';

class Mydetail extends StatelessWidget {
  const Mydetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            SizedBox(
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height / 2,
              height: 750,
              child: Positioned(
                left: 0,
                top: 0,
                child: Image.asset(
                  'assets/images/furniture/img_product_1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 48,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: MyappbarDetail(),
              ),
            ),
            const Positioned(left: 0, bottom: 0, child: MycontainerDetail()),
          ],
        ),
      ),
    );
  }
}
