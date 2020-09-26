import 'package:animate_do/animate_do.dart';
import 'package:eastsussexboilers1/constants/faqQuestionAnser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  int selectedindex = 0;
  List category = [
    {'icon': Icons.info, 'name': "General"},
    {'icon': Icons.hot_tub, 'name': "Boilers"},
    {'icon': Icons.directions_car, 'name': "Delivery"},
    {'icon': Icons.settings, 'name': "Installation"},
  ];
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                  Text("FAQ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => listtilecard(index),
                  itemCount: category.length),
            ),
            categoryWiseFAQ(selectedindex)
          ],
        ),
      ),
    );
  }
  //listitem

  Widget listtilecard(int index) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: index == selectedindex
                    ? Color.fromRGBO(227, 77, 92, 1)
                    : Colors.white,
                border: index == selectedindex
                    ? null
                    : Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  category[index]['icon'],
                  color: index == selectedindex
                      ? Colors.white
                      : Color.fromRGBO(227, 77, 92, 1),
                  size: 30,
                ),
                SizedBox(height: 10),
                Text(
                  category[index]['name'],
                  style: TextStyle(
                      color: index == selectedindex
                          ? Colors.white
                          : Color.fromRGBO(227, 77, 92, 1)),
                )
              ],
            ),
          ),
        ));
  }

  Widget categoryWiseFAQ(int index) {
    List questionsAnswer = [];
    if (index == 0) {
      questionsAnswer = FAQQuestionAnswer()
          .questionAnswer
          .where((element) => element['type'] == "General")
          .toList();
    }
    if (index == 1) {
      questionsAnswer = FAQQuestionAnswer()
          .questionAnswer
          .where((element) => element['type'] == "Boilers")
          .toList();
    }
    if (index == 2) {
      questionsAnswer = FAQQuestionAnswer()
          .questionAnswer
          .where((element) => element['type'] == "Delivery")
          .toList();
    }
    if (index == 3) {
      questionsAnswer = FAQQuestionAnswer()
          .questionAnswer
          .where((element) => element['type'] == "Installation")
          .toList();
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height-150-121,
      child: ListView.builder(
          physics: ScrollPhysics(),
          itemCount: questionsAnswer.length,
          itemBuilder: (context, index) =>
              questionAnswerWidget(index, questionsAnswer)),
    );
  }

  Widget questionAnswerWidget(int index, List questionAnswer) {
    return FadeIn(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              questionAnswer[index]['question'],
              style: TextStyle(color: Color.fromRGBO(227, 77, 92, 1)),
            ),
            SizedBox(height: 5),
            Text(
              questionAnswer[index]['answer'],
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
