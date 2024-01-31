import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Kolom di atas GridView
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Header Text',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            // ListView untuk kategori
            Container(
              height: 50,
              child: MyCategoryListView(),
            ),
            // GridView di dalam Expanded agar dapat mengisi sisa ruang
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
  List<String> _category = ['Category 1', 'Category 2', 'Category 3'];
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
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        category,
        style: TextStyle(color: fontColor),
      ),
    );
  }
}
