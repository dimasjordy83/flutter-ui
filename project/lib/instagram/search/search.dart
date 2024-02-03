import 'package:flutter/material.dart';
import 'package:project/instagram/search/widget/bottom_nav.dart';
import 'package:project/instagram/search/widget/list_search.dart';
import 'package:project/instagram/search/widget/grid_search.dart';
import 'package:project/instagram/search/widget/grid2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color: Color.fromARGB(12, 118, 118, 128),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(11.25, 11.25, 10.75, 11.25),
                      height: 14,
                      width: 14,
                      child:
                          SvgPicture.asset("assets/icons/instagram/search.svg"),
                    ),
                    Expanded(
                        child: Container(
                      // color: Colors.amber,
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(fontSize: 16),
                        ),
                        style: TextStyle(fontSize: 16),
                        onChanged: (value) {
                          print("Search query: $value");
                        },
                        onEditingComplete: () {
                          print("Editing complete");
                        },
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 20,
            width: 20,
            margin: EdgeInsets.all(8),
            // color: const Color.fromARGB(255, 90, 86, 72),
            child: SvgPicture.asset("assets/icons/instagram/scane.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 32,
          margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
          child: ListSearch(),
        ),
        Container(
          height: 742,
          // color: Colors.red,
          child: PhotoGrid(),
        )
      ])),
      bottomNavigationBar: BottomSearch(),
    );
  }
}
