import 'package:flutter/material.dart';
import 'package:project/instagram/search/widget/bottom_nav.dart';
import 'package:project/instagram/search/widget/list_search.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 36,
                width: 306,
                decoration: BoxDecoration(
                    color: Color.fromARGB(12, 118, 118, 128),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(11.25, 11.25, 10.75, 11.25),
                      height: 14,
                      width: 14,
                      child:
                          SvgPicture.asset("assets/icons/instagram/search.svg"),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Container(
                height: 20,
                width: 20,
                margin: EdgeInsets.all(8),
                color: const Color.fromARGB(255, 90, 86, 72),
              )
            ],
          )
        ],
      ),
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 32,
          margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
          child: ListSearch(),
        )
      ]),
      bottomNavigationBar: BottomSearch(),
    );
  }
}
