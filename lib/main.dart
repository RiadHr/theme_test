import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_test/pages/profile_page.dart';
import 'package:theme_test/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (BuildContext context) => ThemeProvider(),
      builder: (context, child) =>MaterialApp(
        title: 'Flutter Demo',
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        themeMode:context.watch<ThemeProvider>().themeModes,
        home:  const ProfilePage(),
      ),


    );
  }
}

