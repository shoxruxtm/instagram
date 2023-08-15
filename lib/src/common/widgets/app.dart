import 'package:flutter/material.dart';

import '../../feature/screens/home_screens.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:  MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        title: "Flutter Demo",
        home: const HomePage(),
      ),
    );
  }
}
