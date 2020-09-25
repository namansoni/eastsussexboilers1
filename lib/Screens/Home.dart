import 'package:eastsussexboilers1/Screens/Aboutus.dart';
import 'package:eastsussexboilers1/Screens/getQuoteWebview.dart';
import 'package:eastsussexboilers1/Screens/getqoute.dart';
import 'package:eastsussexboilers1/Screens/howitworks.dart';
import 'package:eastsussexboilers1/providers/drawerProvider.dart';
import 'package:eastsussexboilers1/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FAQ.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return Scaffold(
      drawer: SafeArea(child: Drawer1()),
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image.asset('assets/eastsussexlogo.png'),
        bottom: PreferredSize(
            child: Container(
              color: Colors.green,
              width: MediaQuery.of(context).size.width,
              height: 20,
              child: Center(child: Text("Trust Pilot")),
            ),
            preferredSize: Size.fromHeight(30)),
      ),
      body: drawerProvider.index == 0
          ? Text("Home")
          : drawerProvider.index == 1
              ? AboutUs()
              : drawerProvider.index == 2
                  ? FAQ()
                  : drawerProvider.index == 3 ? HowItWorks() : Container(),
    );
  }
}
//addedfaq
