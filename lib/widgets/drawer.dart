import 'dart:async';

import 'package:eastsussexboilers1/Screens/getQuoteWebview.dart';
import 'package:eastsussexboilers1/providers/drawerProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    final drawerProider = Provider.of<DrawerProvider>(context);
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/eastsussexlogo.png')),
            Container(
              color: drawerProider.index == 0 ? Colors.grey : null,
              child: ListTile(
                onTap: () {
                  Provider.of<DrawerProvider>(context, listen: false)
                      .changeIndex(0);
                  Timer(Duration(milliseconds: 200), () {
                    Navigator.of(context).pop();
                  });
                },
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            Container(
              color: drawerProider.index == 1 ? Colors.grey : null,
              child: ListTile(
                onTap: () {
                  Provider.of<DrawerProvider>(context, listen: false)
                      .changeIndex(1);
                  Timer(Duration(milliseconds: 200), () {
                    Navigator.of(context).pop();
                  });
                },
                leading: Icon(Icons.info_outline),
                title: Text("About Us"),
              ),
            ),
            Container(
              color: drawerProider.index == 2 ? Colors.grey : null,
              child: ListTile(
                onTap: () {
                  Provider.of<DrawerProvider>(context, listen: false)
                      .changeIndex(2);
                  Timer(Duration(milliseconds: 200), () {
                    Navigator.of(context).pop();
                  });
                },
                leading: Icon(Icons.message),
                title: Text("FAQ"),
              ),
            ),
            Container(
              color: drawerProider.index == 3 ? Colors.grey : null,
              child: ListTile(
                onTap: () {
                  Provider.of<DrawerProvider>(context, listen: false)
                      .changeIndex(3);
                  Timer(Duration(milliseconds: 200), () {
                    Navigator.of(context).pop();
                  });
                },
                leading: Icon(Icons.work),
                title: Text("How It Works"),
              ),
            ),
            Container(
              color: drawerProider.index == 4 ? Colors.grey : null,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GetQuoteWebview(),
                  ));
                },
                leading: Icon(Icons.adjust),
                title: Text("Get Quote"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
