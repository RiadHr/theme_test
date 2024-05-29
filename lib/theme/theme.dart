
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

  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black12,
    colorScheme: ColorScheme.dark()
  );
}
