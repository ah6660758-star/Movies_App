import 'package:flutter/material.dart';
import 'package:movies_app/core/imageManager/imageManager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Image.asset(Imagemanager.mainLayoutTitleImage)],
        ),
      ),
    );
  }
}
