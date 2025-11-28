import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/routes_manager/routs_manager.dart';
import 'package:movies_app/features/main_layout/Home_Screen/HomeScreen.dart';

abstract class RouterManager {
  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.mainLayout:
        {
          return CupertinoPageRoute(builder: (context) => HomeScreen());
        }
    }
  }
}
