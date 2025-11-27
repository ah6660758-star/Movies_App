import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/config/theme/theme.dart';
import 'package:movies_app/core/routes_manager/router.dart';
import 'package:movies_app/core/routes_manager/routs_manager.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: Size(430, 932),
      minTextAdapt: true,
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesManager.mainLayout,
        onGenerateRoute: RouterManager.router,
        darkTheme: ThemeManager.dark,
        theme: ThemeManager.light,
      ),
    );
  }
}
