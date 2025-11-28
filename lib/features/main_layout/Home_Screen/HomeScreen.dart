import 'package:flutter/material.dart';
import 'package:movies_app/core/ColorManager/colors_manager.dart';
import 'package:movies_app/core/imageManager/imageManager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _BottomNavigationBar(),
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Image.asset(Imagemanager.mainLayoutTitleImage)],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  _BottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (currentIndex) {
        selectedIndex = currentIndex;
        setState(() {});
      },
      currentIndex: selectedIndex,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: ColorsManager.yellow),
      unselectedIconTheme: IconThemeData(color: ColorsManager.white),
      backgroundColor: ColorsManager.gray,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ],
    );
  }
}
