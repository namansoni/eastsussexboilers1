import 'package:eastsussexboilers/Screens/getQuoteWebview.dart';
import 'package:eastsussexboilers/providers/drawerProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/banner.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Install your boiler by following these simple steps',
                  style: TextStyle(color: Colors.blue[900], fontSize: 50),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple,
              ),
              width: 30,
              height: 30,
              child: Center(
                  child: Text(
                '1',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 8,
                child: Column(
                  children: [
                    Image.asset('assets/Step1.png'),
                    Text(
                      'Describe your home',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Answer a few simple questions and we will generate an instant quote in real-time',
                        style: TextStyle(color: Colors.grey[500], fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple,
              ),
              width: 30,
              height: 30,
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 8,
                child: Column(
                  children: [
                    Image.asset('assets/Step2.png'),
                    Text(
                      'Select a boiler and installation date',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Choose a boiler according to your budget and availability',
                        style: TextStyle(color: Colors.grey[500], fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple,
              ),
              width: 30,
              height: 30,
              child: Center(
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 8,
                child: Column(
                  children: [
                    Image.asset('assets/Step3.png'),
                    Text(
                      'Get ready to enjoy your new boiler',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Make a payment and we will take care of the rest',
                        style: TextStyle(color: Colors.grey[500], fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                Provider.of<DrawerProvider>(context, listen: false)
                    .changeIndex(3);
              },
              color: Colors.red,
              child: Text(
                'Learn More',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Our top selling boiler',
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/vitodens-050-w-which-2019.png'),
                  Text(
                    'How We Work',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' Viessmann Vitodens 050-W',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'East Sussex Boilers is a place where you can buy your boiler online in the fastest possible way. You just need to answer some simple questions in an online survey, and receive our instant quotes for your home. We have several boilers suitable for your budget.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Provider.of<DrawerProvider>(context, listen: false)
                          .changeIndex(4);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GetQuoteWebview(),
                      ));
                    },
                    color: Colors.red,
                    child: Text(
                      'View Boilers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 1.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/iheat_eph.png',
                      scale: 0.9,
                    ),
                    Text(
                      'Free EPH Programmer*',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '*Free EPH programmer with every combi boiler installed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue[900],
                      onPressed: () {
                        Provider.of<DrawerProvider>(context, listen: false)
                            .changeIndex(4);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GetQuoteWebview(),
                        ));
                      },
                      child: Text(
                        'Find New Bioler',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Customer Reviews',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Trustpilot',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blue[900],
                    onPressed: () async {
                      if (await canLaunch(
                          "https://www.trustpilot.com/review/eastsussexboilers.co.uk")) {
                        launch(
                            "https://www.trustpilot.com/review/eastsussexboilers.co.uk");
                      }
                    },
                    child: Text(
                      'View More',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
