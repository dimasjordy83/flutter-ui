import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Map<String, dynamic>> menuItems = [
    {
      "title": "Home",
      "icon": "assets/icons/instagram/home.svg",
    },
    {
      "title": "Search",
      "icon": "assets/icons/instagram/search.svg",
    },
    {
      "title": "Add",
      "icon": "assets/icons/instagram/add_nav.svg",
    },
    {
      "title": "Notifikasi",
      "icon": "assets/icons/instagram/love.svg",
    },
    {
      "title": "person",
      "icon": "assets/icons/instagram/circle.svg",
    },
  ];

  int _selectedItem = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Color(0xFF262626),
      elevation: 32,
      type: BottomNavigationBarType.fixed,
      items: menuItems
          .map(
            (item) => BottomNavigationBarItem(
              icon: SvgPicture.asset(item["icon"]),
              label: item["title"],
              // activeIcon: Container(
              //   padding: const EdgeInsets.all(10),
              //   decoration: const BoxDecoration(
              //     color: Colors.grey,
              //     borderRadius: BorderRadius.all(Radius.circular(14)),
              //   ),
              //   child: SvgPicture.asset(
              //     item["icon"],
              //     colorFilter:
              //         const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              //   ),
              // ),
            ),
          )
          .toList(),
      currentIndex: _selectedItem,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
    );
  }
}
