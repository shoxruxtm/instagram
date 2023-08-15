import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/service/api_service.dart';
import '../data/repository.dart';
import '../model/photo_model.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return  TabBar(
     indicatorColor: Colors.black,
     indicatorSize: TabBarIndicatorSize.tab,
     tabs: [
       Tab(
         child: Image(
           height: 30,
           width: 30,
           image: AssetImage("images/Icons (1).png"),
         ),
       ),
       Tab(
         child: Image(
           height: 30,
           width: 30,
           image: AssetImage("images/Icons (2).png"),
         ),
       ),
       Tab(
         child: Image(
           height: 30,
           width: 30,
           image: AssetImage("images/Icons (3).png"),
         ),
       ),
     ],
   );
  }
}
