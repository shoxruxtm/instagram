import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({
    required this.pageNumber,
    required this.onPageChange,
    Key? key,
  }) : super(key: key);
  final int pageNumber;
  final void Function(int value) onPageChange;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.black,
      elevation: 0,
      iconSize: 35,
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      type: BottomNavigationBarType.fixed,
      currentIndex: pageNumber,
      onTap: onPageChange,
      showSelectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.plus_app),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image(
            color: Colors.black54,
            height: 30,
            width: 30,
            image: AssetImage(
              "images/Icons (5).png",
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 18,
            foregroundImage: AssetImage("images/Avatar (2).png"),
          ),
          label: "",
        ),
      ],
    );
  }
}
