import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  TextStyle style = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              FadeInDown(
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 30,
                      color: Color.fromRGBO(227, 77, 92, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("About Us",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
              ),
              FadeInDown(
                child: Image.asset(
                  'assets/aboutus.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeInDown(
                child: Container(
                  child: Text(
                    'East Sussex Boilers is committed to finding you the best suitable boiler for your needs.',
                    style: style,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeInDown(
                child: Container(
                  child: Text(
                    '“We are best in the industry”, we provide stress free services to our customer. No more salesperson, no hidden cost, no weeks of waiting for a new boiler. We give our customer the fastest most reliable way to get quote online and install their boiler within days.',
                    style: style,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeInDown(
                child: Container(
                  child: Text(
                    'We have many years of experience with every level of the industry. We have highly skilled professionals for all installations.',
                    style: style,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeInDown(
                child: Container(
                  child: Text(
                    'East Sussex Boilers uses a network of Gas Safe installers who have passed our vetting process. We only send experienced and trained professionals in to your home.',
                    style: style,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeInDown(
                child: Container(
                  child: Text(
                    'Nowadays we know everyone in hurry, even they don’t have time for themselves. In that busy world, our aim is to provide our customers an easy, hassle-free facility to buy your new boiler online. Our team endeavour to meet this aim every day.',
                    style: style,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
