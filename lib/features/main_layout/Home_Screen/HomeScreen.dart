import 'package:flutter/material.dart';
import 'package:movies_app/core/ColorManager/colors_manager.dart';
import 'package:movies_app/core/imageManager/imageManager.dart';
import 'package:movies_app/features/main_layout/Browse_Tap/browse.dart';
import 'package:movies_app/features/main_layout/Home_Tap/home.dart';
import 'package:movies_app/features/main_layout/Profile_Tap/profile.dart';
import 'package:movies_app/features/main_layout/Search_Tap/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int tapindex = 0;

  List<Widget> taps = [
    const HomeTap(),
    const SearchTap(),
    const BrowseTap(),
    const ProfileTap(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _BottomNavigationBar(),
        backgroundColor: Colors.transparent,
        body: taps[tapindex],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  _BottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (currentIndex) {
        tapindex = currentIndex;
        setState(() {});
      },
      currentIndex: tapindex,

      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: ColorsManager.yellow),
      unselectedIconTheme: IconThemeData(color: ColorsManager.white),
      backgroundColor: ColorsManager.gray,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }
}
