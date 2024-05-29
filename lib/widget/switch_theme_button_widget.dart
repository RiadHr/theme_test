
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_test/theme/theme.dart';

class SwitchThemeButtonWidget extends StatefulWidget {
  const SwitchThemeButtonWidget({super.key});

  @override
  State<SwitchThemeButtonWidget> createState() => _SwitchThemeButtonWidgetState();
}

class _SwitchThemeButtonWidgetState extends State<SwitchThemeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
        value:context.watch<ThemeProvider>().isDark,
        onChanged:(value)=>setState(() {
           context.read<ThemeProvider>().toggleTheme(value);
        }));
  }
}
