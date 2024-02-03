import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/instagram/profile/profile.dart';
import 'package:project/instagram/search/search.dart';

class BottomSearch extends StatefulWidget {
  const BottomSearch({Key? key}) : super(key: key);

  @override
  State<BottomSearch> createState() => _BottomSearchState();
}

class _BottomSearchState extends State<BottomSearch> {
  int _currentIndex = 1;

  List<List<String>> _svgPaths = [
    [
      "assets/icons/instagram/home.svg",
      "assets/icons/instagram/home_selected.svg",
    ],
    [
      "assets/icons/instagram/search.svg",
      "assets/icons/instagram/search_selected.svg",
    ],
    [
      "assets/icons/instagram/add_nav.svg",
      "assets/icons/instagram/add_selected.svg",
    ],
    [
      "assets/icons/instagram/love.svg",
      "assets/icons/instagram/love_selected.svg",
    ],
    [
      "assets/images/instagram/tumb_avatar.png",
      "assets/images/instagram/tumb_avatar_selected.png",
    ],
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (_currentIndex) {
      case 0:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Search()),
        );
      case 2:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
      case 4:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyProfile()),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            _svgPaths[0][_currentIndex == 0 ? 1 : 0],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            _svgPaths[1][_currentIndex == 1 ? 1 : 0],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            _svgPaths[2][_currentIndex == 2 ? 1 : 0],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            _svgPaths[3][_currentIndex == 3 ? 1 : 0],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(_svgPaths[4][0]),
            // backgroundImage: AssetImage(_svgPaths[4][_currentIndex == 4 ? 1 : 0]),
          ),
          label: '',
        ),
      ],
    );
  }
}
