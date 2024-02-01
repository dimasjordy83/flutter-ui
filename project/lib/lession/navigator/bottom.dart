import 'package:flutter/material.dart';
import 'package:project/lession/circleavatar.dart';
import 'package:project/lession/navigator/pageone.dart';
import 'package:project/lession/navigator/pagetwo.dart';

class Mybottomnavigator extends StatefulWidget {
  const Mybottomnavigator({Key? key}) : super(key: key);

  @override
  State<Mybottomnavigator> createState() => _MybottomnavigatorState();
}

class _MybottomnavigatorState extends State<Mybottomnavigator> {
  List<Map<String, dynamic>> menuItems = [
    {"title": "Home", "icon": Icons.home},
    {"title": "Chart", "icon": Icons.shopping_cart},
    {"title": "Account", "icon": Icons.person}
  ];
  List<Widget> page = [Mypageone(), Mypagetwo(), Myavatar()];

  int _selectItem = 0;
  String _text = "Home";

  void _onItemTapped(int index) {
    print("Item tapped: $index");
    setState(() {
      _selectItem = index;
      _text = menuItems[index]["title"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigator"),
      ),
      body: IndexedStack(
        index: _selectItem,
        children: page,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item["icon"]),
                label: item["title"],
                activeIcon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Icon(item["icon"]),
                ),
              ),
            )
            .toList(),
        currentIndex: _selectItem,
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}
