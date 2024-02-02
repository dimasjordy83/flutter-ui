import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSearch extends StatefulWidget {
  const BottomSearch({super.key});

  @override
  State<BottomSearch> createState() => _BottomSearchState();
}

class _BottomSearchState extends State<BottomSearch> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/instagram/home.svg"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/instagram/search.svg"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/instagram/add_nav.svg"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/instagram/love.svg"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 15,
            backgroundImage:
                AssetImage('assets/images/instagram/tumb_avatar.png'),
          ),
          label: '',
        ),
      ],
    );
  }

  Widget _buildIcon(String iconPath, bool isSelected) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: isSelected ? Border.all(color: Colors.black, width: 2.0) : null,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: SvgPicture.asset(
        iconPath,
        color: isSelected ? Colors.black : Colors.grey,
        height: 24.0,
      ),
    );
  }
}
