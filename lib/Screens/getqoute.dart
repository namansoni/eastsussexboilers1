import 'dart:convert';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetQuote extends StatefulWidget {
  @override
  _GetQuoteState createState() => _GetQuoteState();
}

class _GetQuoteState extends State<GetQuote> {
  TextEditingController pincodeControleer = TextEditingController();
  bool isQ1Visible = true,
      isQ2Visible = false,
      isQ3Visible = false,
      isQ4Visible = false,
      isQ5Visible = false,
      isQ6Visible = false,
      isQ7Visible = false,
      isQ8Visible = false,
      isQ9Visible = false,
      isQ10Visible = false,
      isQ11Visible = false,
      isQ12Visible = false,
      isQ13Visible = false,
      isQ14Visible = false,
      isQ15Visible = false,
      isThanksVisible = false;
  int fuel,
      boiler,
      water_tank,
      convert_combi,
      cold_tap,
      boiler_moving_location,
      boiler_current_location,
      relocate_boiler,
      house_type,
      bedroom,
      bathtubes,
      showers,
      boiler_flue,
      rbcb,
      radiator,
      pincode;
  int selectedQuestion = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/banner.jpg",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: 200,
              ),
              SizedBox(height: 10),
              FadeIn(
                child: Visibility(
                  child: question1(),
                  visible: isQ1Visible,
                ),
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question2()),
                visible: isQ2Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question3()),
                visible: isQ3Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question4()),
                visible: isQ4Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question5()),
                visible: isQ5Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question6()),
                visible: isQ6Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question7()),
                visible: isQ7Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question8()),
                visible: isQ8Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question9()),
                visible: isQ9Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question10()),
                visible: isQ10Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question11()),
                visible: isQ11Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question12()),
                visible: isQ12Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question13()),
                visible: isQ13Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question14()),
                visible: isQ14Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500), child: question15()),
                visible: isQ15Visible,
              ),
              Visibility(
                child: FadeInRight(
                    duration: Duration(milliseconds: 500),
                    child: thanksForSurvey()),
                visible: isThanksVisible,
              ),
            ],
          ),
        ));
  }

  Widget questionWidget(String question) {
    return Text(question,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
  }

  Widget questionExplation(String explanation) {
    return Text(explanation);
  }

  Widget buttonWidget(String imagePath, String name) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[200])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 50, height: 50),
          SizedBox(height: 8),
          Text(name)
        ],
      ),
    );
  }

  Widget question1() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("Current fuel type?"),
          questionExplation("Should be written on the front of the boiler."),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ1Visible = false;
                      isQ2Visible = true;
                      fuel = 0;
                    });
                  },
                  child: buttonWidget('assets/main_gas.png', "Main Gas")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ1Visible = false;
                      isQ2Visible = true;
                      fuel = 1;
                    });
                  },
                  child: buttonWidget('assets/lpg.jpg', "LPG")),
            ],
          )
        ],
      ),
    );
  }

  Widget question2() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("Type of current boiler?"),
          questionExplation("Should be written on the front of the boiler."),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ2Visible = false;
                      isQ3Visible = true;
                      boiler = 0;
                    });
                  },
                  child:
                      buttonWidget('assets/combiBoiler.png', "Combi Boiler")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ2Visible = false;
                      isQ4Visible = true;
                      boiler = 1;
                    });
                  },
                  child: buttonWidget(
                      'assets/boilerTank.png', "Boiler with Tank")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ2Visible = false;
                      isQ5Visible = true;
                      boiler = 2;
                    });
                  },
                  child: buttonWidget('assets/BackBoiler.png', "Back Boiler")),
            ],
          )
        ],
      ),
    );
  }

  Widget question3() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("Do you want your boiler moving location?"),
          questionExplation("Should be written on the front of the boiler."),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ3Visible = false;
                      isQ6Visible = true;
                      boiler_moving_location = 0;
                    });
                  },
                  child: buttonWidget('assets/myes.png', "Yes")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ3Visible = false;
                      isQ7Visible = true;
                      boiler_moving_location = 1;
                    });
                  },
                  child: buttonWidget('assets/mno.png', "No")),
            ],
          )
        ],
      ),
    );
  }

  Widget question4() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("Which type of water tank do you have?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ4Visible = false;
                      isQ8Visible = true;
                      water_tank = 0;
                    });
                  },
                  child: buttonWidget('assets/tank-regular.png', "Regular")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ4Visible = false;
                      isQ8Visible = true;
                      water_tank = 1;
                    });
                  },
                  child: buttonWidget('assets/tank-system.png', "System")),
            ],
          )
        ],
      ),
    );
  }

  Widget question5() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget(
              "Do you want to convert your boiler as combi boiler or regular boiler?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ5Visible = false;
                      isQ9Visible = true;
                      rbcb = 0;
                    });
                  },
                  child: buttonWidget('assets/combi.png', "Combi Boiler")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ5Visible = false;
                      isQ10Visible = true;
                      rbcb = 1;
                    });
                  },
                  child: buttonWidget('assets/regular.png', "Regular Boiler")),
            ],
          )
        ],
      ),
    );
  }

  Widget question6() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("What is the current location of your boiler?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ6Visible = false;
                      isQ11Visible = true;
                      boiler_current_location = 0;
                    });
                  },
                  child: buttonWidget('assets/kitchen.png', "Kitchen")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ6Visible = false;
                      isQ11Visible = true;
                      boiler_current_location = 1;
                    });
                  },
                  child: buttonWidget('assets/utility.png', "Utility Room")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ6Visible = false;
                      isQ11Visible = true;
                      boiler_current_location = 2;
                    });
                  },
                  child: buttonWidget('assets/garage.png', "Garage")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ6Visible = false;
                      isQ11Visible = true;
                      boiler_current_location = 3;
                    });
                  },
                  child: buttonWidget('assets/Airing.png', "Airing Cupboard")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ6Visible = false;
                      isQ11Visible = true;
                      boiler_current_location = 4;
                    });
                  },
                  child: buttonWidget('assets/Others.png', "Others")),
            ],
          )
        ],
      ),
    );
  }

  Widget question7() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("What type of house you live in?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ7Visible = false;
                      isQ12Visible = true;
                      house_type = 0;
                    });
                  },
                  child: buttonWidget(
                      'assets/semi-detached.png', "Semi Detached")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ7Visible = false;
                      isQ12Visible = true;
                      house_type = 1;
                    });
                  },
                  child: buttonWidget('assets/detached.png', "Detached")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ7Visible = false;
                      isQ12Visible = true;
                      house_type = 2;
                    });
                  },
                  child: buttonWidget('assets/terraced.png', "Terraced")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ7Visible = false;
                      isQ12Visible = true;
                      house_type = 3;
                    });
                  },
                  child: buttonWidget('assets/bungalow.png', "Bunglow")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ7Visible = false;
                      isQ12Visible = true;
                      house_type = 4;
                    });
                  },
                  child: buttonWidget('assets/apartment.png', "Apartment")),
            ],
          )
        ],
      ),
    );
  }

  Widget question8() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("Do you want to convert to a combi boiler?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ8Visible = false;
                      isQ9Visible = true;
                      convert_combi = 0;
                    });
                  },
                  child: buttonWidget('assets/combi-convert-yes.png', "Yes")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ8Visible = false;
                      isQ10Visible = true;
                      convert_combi = 1;
                    });
                  },
                  child: buttonWidget('assets/combi-convert-no.png', "No")),
            ],
          )
        ],
      ),
    );
  }

  Widget question9() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("How fast does water flow from your cold tap?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ9Visible = false;
                      isQ3Visible = true;
                      cold_tap = 0;
                    });
                  },
                  child: buttonWidget('assets/fast.png', "Fast")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ9Visible = false;
                      isQ3Visible = true;
                      cold_tap = 1;
                    });
                  },
                  child: buttonWidget('assets/avg.png', "Average")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ9Visible = false;
                      isQ3Visible = true;
                      cold_tap = 2;
                    });
                  },
                  child: buttonWidget('assets/slow.png', "Slow")),
            ],
          )
        ],
      ),
    );
  }

  Widget question10() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("How many radiators do you have?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ10Visible = false;
                      isQ9Visible = true;
                      radiator = 0;
                    });
                  },
                  child: buttonWidget('assets/heat.png', "0-5")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ10Visible = false;
                      isQ9Visible = true;
                      radiator = 1;
                    });
                  },
                  child: buttonWidget('assets/heat.png', "6-9")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ10Visible = false;
                      isQ9Visible = true;
                      radiator = 2;
                    });
                  },
                  child: buttonWidget('assets/heat.png', "10-13")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ10Visible = false;
                      isQ9Visible = true;
                      radiator = 3;
                    });
                  },
                  child: buttonWidget('assets/heat.png', "14-16")),
            ],
          )
        ],
      ),
    );
  }

//question 11 karna hai
  Widget question11() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("Where do you want to relocate your boiler?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ11Visible = false;
                      isQ7Visible = true;
                      relocate_boiler = 0;
                    });
                  },
                  child: buttonWidget('assets/150.png', "Same Room")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ11Visible = false;
                      isQ7Visible = true;
                      relocate_boiler = 1;
                    });
                  },
                  child: buttonWidget('assets/300.png', "Kitchen")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ11Visible = false;
                      isQ7Visible = true;
                      relocate_boiler = 2;
                    });
                  },
                  child: buttonWidget('assets/300.png', "Garage")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ11Visible = false;
                      isQ7Visible = true;
                      relocate_boiler = 3;
                    });
                  },
                  child: buttonWidget('assets/300.png', "Utility Room")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ11Visible = false;
                      isQ7Visible = true;
                      relocate_boiler = 4;
                    });
                  },
                  child: buttonWidget('assets/500.png', "Attic")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ11Visible = false;
                      isQ7Visible = true;
                      relocate_boiler = 5;
                    });
                  },
                  child: buttonWidget('assets/300.png', "Bedroom")),
            ],
          ),
          InkWell(
              onTap: () {
                setState(() {
                  isQ11Visible = false;
                  isQ7Visible = true;
                  relocate_boiler = 6;
                });
              },
              child: buttonWidget('assets/300.png', "Others")),
        ],
      ),
    );
  }

  Widget question12() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("How many bedroom do you have?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ12Visible = false;
                      isQ13Visible = true;
                      bedroom = 0;
                    });
                  },
                  child: buttonWidget('assets/Bedroom1.png', "1")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ12Visible = false;
                      isQ13Visible = true;
                      bedroom = 1;
                    });
                  },
                  child: buttonWidget('assets/Bedroom2.png', "2")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ12Visible = false;
                      isQ13Visible = true;
                      bedroom = 2;
                    });
                  },
                  child: buttonWidget('assets/Bedroom3.png', "3")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ12Visible = false;
                      isQ13Visible = true;
                      bedroom = 3;
                    });
                  },
                  child: buttonWidget('assets/Bedroom4.png', "4")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ12Visible = false;
                      isQ13Visible = true;
                      bedroom = 4;
                    });
                  },
                  child: buttonWidget('assets/Bedroom5.png', "5+")),
            ],
          )
        ],
      ),
    );
  }

  Widget question13() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("How many bathtubs do you have?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ13Visible = false;
                      isQ14Visible = true;
                      bathtubes = 0;
                    });
                  },
                  child: buttonWidget('assets/bathtub0.png', "0")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ13Visible = false;
                      isQ14Visible = true;
                      bathtubes = 1;
                    });
                  },
                  child: buttonWidget('assets/bathtub1.png', "1")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ13Visible = false;
                      isQ14Visible = true;
                      bathtubes = 2;
                    });
                  },
                  child: buttonWidget('assets/bathtub2.png', "2")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ13Visible = false;
                      isQ14Visible = true;
                      bathtubes = 3;
                    });
                  },
                  child: buttonWidget('assets/bathtub3.png', "3+")),
            ],
          )
        ],
      ),
    );
  }

  Widget question14() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("How many separated showers do you have?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ14Visible = false;
                      isQ15Visible = true;
                      showers = 0;
                    });
                  },
                  child: buttonWidget('assets/shower0.png', "0")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ14Visible = false;
                      isQ15Visible = true;
                      showers = 1;
                    });
                  },
                  child: buttonWidget('assets/shower1.png', "1")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ14Visible = false;
                      isQ15Visible = true;
                      showers = 2;
                    });
                  },
                  child: buttonWidget('assets/shower2.png', "2")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ14Visible = false;
                      isQ15Visible = true;
                      showers = 3;
                    });
                  },
                  child: buttonWidget('assets/shower3.png', "3+")),
            ],
          )
        ],
      ),
    );
  }

  Widget question15() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          questionWidget("Where does your boiler’s fuel comes out?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ15Visible = false;
                      isThanksVisible = true;
                      boiler_flue = 0;
                    });
                  },
                  child:
                      buttonWidget('assets/flue-out-external.png', "External")),
              InkWell(
                  onTap: () {
                    setState(() {
                      isQ15Visible = false;
                      isThanksVisible = true;
                      boiler_flue = 1;
                    });
                  },
                  child: buttonWidget('assets/flue-out-roof.png', "Roof")),
            ],
          ),
        ],
      ),
    );
  }

  Widget thanksForSurvey() {
    return Column(
      children: [
        Text(
          "Thanks for taking survey.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "Enter your Postcode",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 5, right: 5),
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              controller: pincodeControleer,
              decoration: InputDecoration(border: InputBorder.none),
            )),
        RaisedButton(
          onPressed: () async {
            http.Response response = await http
                .post("http://eastsussexboilers.co.uk/shop.php", body: {
              'fuel': fuel.toString(),
              'boiler': boiler.toString(),
              'water_tank': water_tank.toString(),
              'convert_combi': convert_combi.toString(),
              'cold_tap': cold_tap.toString(),
              'boiler_current_location': boiler_current_location.toString(),
              'relocate_boiler': relocate_boiler.toString(),
              'house_type': house_type.toString(),
              'bedroom': bedroom.toString(),
              'bathtubes': bathtubes.toString(),
              'showers': showers.toString(),
              'boiler_flue': boiler_flue.toString(),
              'RBCB': rbcb.toString(),
              'radiator': radiator.toString(),
              'pincode': pincodeControleer.text
            });
            print(response.body);
          },
          child: Text("Get Quote", style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
//
