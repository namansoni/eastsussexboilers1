import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Card(
              elevation: 10,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'What is your name?',
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                      onChanged: (value) => setState(() {}),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'What is your email?',
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                      onChanged: (value) => setState(() {}),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'What is your Phone Number?',
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                      onChanged: (value) => setState(() {}),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Tell us about your project',
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                      ),
                      onChanged: (value) => setState(() {}),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        'Enquire Now',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.message,
                      size: 50,
                    ),
                    Text(
                      'Use our Livechat',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text(
                        'Get in contact instantly with one of our experts to ask any questions',
                        style: TextStyle(color: Colors.grey[500], fontSize: 18),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        'Speak on Livechat',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contact_mail,
                      size: 50,
                    ),
                    Text(
                      'Office Address',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text(
                        'East Sussex Boilers Cackle street, Brede, Rye, Tn316dx',
                        style: TextStyle(color: Colors.grey[500], fontSize: 18),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        'Call US',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 50,
                    ),
                    Text(
                      'Email Us',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text(
                        'Phone: (+44) 7833432839 ,Email: info@eastsussexboilers.co.uk',
                        style: TextStyle(color: Colors.grey[500], fontSize: 18),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        'Email Us',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
