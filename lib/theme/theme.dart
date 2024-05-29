
import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeModes = ThemeMode.dark;

  bool get isDark => themeModes == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeModes = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme{
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.orange, ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white60,
        iconTheme: IconThemeData(color: Colors.orange,size:lerpDouble(40, 40, 40) ))

  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black12,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.deepPurple.shade200),
    appBarTheme: AppBarTheme(

        color: Colors.black12,
        iconTheme: IconThemeData(color: Colors.deepPurple.shade200,size: lerpDouble(40, 40, 40)))
  );
}
