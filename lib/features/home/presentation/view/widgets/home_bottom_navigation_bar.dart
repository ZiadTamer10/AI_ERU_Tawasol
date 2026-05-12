import 'package:ai_eru_tawasol/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.grey,
      elevation: 0.01,
      iconSize: 32,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: "Courses",
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.solidComments, size: 28),
          label: "Messages",
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}
