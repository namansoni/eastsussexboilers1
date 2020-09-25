import 'package:eastsussexboilers1/Screens/Home.dart';
import 'package:eastsussexboilers1/providers/drawerProvider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: DrawerProvider()),
      ],
      child: MaterialApp(
        theme: Theme1().themeData,
        home: Home(),
      ),
    );
  }
}
