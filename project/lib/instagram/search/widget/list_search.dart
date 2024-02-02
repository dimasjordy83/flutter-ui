import 'package:flutter/material.dart';

class ListSearch extends StatefulWidget {
  const ListSearch({super.key});

  @override
  State<ListSearch> createState() => _ListSearchState();
}

class _ListSearchState extends State<ListSearch> {
  final List<String> _category = [
    'IGTV',
    'Shop',
    'Style',
    'Sport',
    'Auto',
    'Desain'
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
          padding: const EdgeInsets.only(right: 7),
          child: InkWell(
              onTap: () => _onTapCategory(index),
              child: _selectedCategory == index
                  ? CategoryItem(
                      category: _category[index],
                      backgroundColor: Color.fromARGB(89, 154, 147, 144),
                      fontColor: const Color(0xFFFFFFFF),
                    )
                  : CategoryItem(
                      category: _category[index],
                      backgroundColor: Colors.transparent,
                      fontColor: const Color(0xFF262626),
                    )),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    required this.backgroundColor,
    required this.fontColor,
  });

  final String category;
  final Color backgroundColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Color.fromARGB(18, 60, 60, 67), width: 1),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          category,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
