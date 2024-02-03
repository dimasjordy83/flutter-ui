import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListSearch extends StatefulWidget {
  const ListSearch({Key? key}) : super(key: key);

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
                    backgroundColor: Colors.transparent,
                    fontColor: Color.fromARGB(255, 208, 55, 55),
                  )
                : CategoryItem(
                    category: _category[index],
                    backgroundColor: Colors.transparent,
                    fontColor: const Color(0xFF262626),
                  ),
          ),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
    required this.backgroundColor,
    required this.fontColor,
  }) : super(key: key);

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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getIcon(category),
          SizedBox(width: 8.0), // Spacing between icon and text
          Text(
            category,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: fontColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getIcon(String category) {
    // Replace the paths with your actual icon paths
    String? iconPath;
    switch (category.toLowerCase()) {
      case 'igtv':
        iconPath = 'assets/icons/instagram/ig_tv.svg';
        break;
      case 'shop':
        iconPath = 'assets/icons/instagram/shop.svg';
        break;
    }

    if (iconPath != null) {
      return SvgPicture.asset(
        iconPath,
        color: fontColor,
        width: 20.0,
        height: 20.0,
      );
    } else {
      return SizedBox(); // Return an empty container if there's no icon
    }
  }
}
