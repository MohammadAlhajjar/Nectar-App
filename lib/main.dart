import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/resources/styles_manager.dart';
import 'view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          height: 92,
          indicatorColor: Colors.transparent,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.selected)
                    ? StylesManager.greenSemiBold12
                    : StylesManager.blackSemiBold12,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      scrollBehavior: const CupertinoScrollBehavior(),
      home: const SplashView(),
    );
  }
}
