import 'package:flutter/material.dart';
import 'package:instagram/src/feature/post/widget/bottom_navigator_bar.dart';
import 'package:instagram/src/feature/screens/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNumber = 0;
  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void pageChanger(int value) {
    controller.animateToPage(
      value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
    setState(() {
      pageNumber = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          allowImplicitScrolling: true,
          controller: controller,
          children: [
            Scaffold(
              backgroundColor: Color(0xFF4FC0D0),
              body: Center(
                child: Text("Page 1"),
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xFFCBFFA9),
              body: Center(
                child: Text("Page 2"),
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xFFC3EDC0),
              body: Center(
                child: Text("Page 3"),
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xFFA2FF86),
              body: Center(
                child: Text("Page 4"),
              ),
            ),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigatorBar(
        pageNumber: pageNumber,
        onPageChange: pageChanger,
      ),
    );
  }
}
