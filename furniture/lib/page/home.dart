import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // Kolom di atas GridView
            Container(
                width: 250,
                margin: EdgeInsets.fromLTRB(0, 0, 100, 25),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255)),
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('Discover the most modern furniture',
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 25))),
            Container(
              height: 40,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: MyCategoryListView(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 10, 150, 10),
                child: Text('Recommended furniture',
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 16))),
            Expanded(
              child: MyGridView(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCategoryListView extends StatefulWidget {
  @override
  _MyCategoryListViewState createState() => _MyCategoryListViewState();
}

class _MyCategoryListViewState extends State<MyCategoryListView> {
  List<String> _category = [
    "All",
    "Living Room",
    "Bedroom",
    "Dining Room",
    "Kitchen"
  ];
  int _selectedCategory = 0;

  void _onTapCategory(int index) {
    setState(() {
      _selectedCategory = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _category.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 17),
          child: InkWell(
            onTap: () => _onTapCategory(index),
            child: _selectedCategory == index
                ? CategoryItem(
                    category: _category[index],
                    backgroundColor: const Color(0xFF9A9390),
                    fontColor: const Color(0xFFFFFFFF),
                  )
                : CategoryItem(
                    category: _category[index],
                    backgroundColor: Colors.transparent,
                    fontColor: const Color(0xFF4A4543),
                  ),
          ),
        );
      },
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String category;
  final Color backgroundColor;
  final Color fontColor;

  const CategoryItem({
    required this.category,
    required this.backgroundColor,
    required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          category,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
