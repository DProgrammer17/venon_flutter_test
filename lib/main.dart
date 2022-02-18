import 'package:flutter/material.dart';
import 'package:venon_flutter_test/customs/custom_theme.dart';
import 'package:venon_flutter_test/customs/theme.dart';
import 'package:venon_flutter_test/ui/analytics/analytics.dart';
import 'package:venon_flutter_test/ui/bottom_index_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget with ChangeNotifier {
   MyApp({ Key? key}): super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venon Flutter Test',
      theme: CustomTheme.LightTheme, //3
      darkTheme: CustomTheme.darkTheme, //4
      themeMode: currentTheme.currentTheme, //5
      debugShowCheckedModeBanner: false,
    home: const BottomNavIndex(index: 0),
    );
  }
}

