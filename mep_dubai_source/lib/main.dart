import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'config/theme_manager.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MEPDubaiApp());
}
class MEPDubaiApp extends StatefulWidget {
  @override
  State<MEPDubaiApp> createState() => _MEPDubaiAppState();
}
class _MEPDubaiAppState extends State<MEPDubaiApp> {
  ThemeData _theme = ThemeManager.lightTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEP Dubai',
      theme: _theme,
      home: HomeScreen(onToggleTheme: () {
        setState(() {
          _theme = _theme == ThemeManager.lightTheme() ? ThemeManager.darkTheme() : ThemeManager.lightTheme();
        });
      }),
    );
  }
}
