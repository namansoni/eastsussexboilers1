import 'package:animate_do/animate_do.dart';
import 'package:eastsussexboilers1/Screens/getQuoteWebview.dart';
import 'package:flutter/material.dart';

class HowItWorks extends StatefulWidget {
  @override
  _HowItWorksState createState() => _HowItWorksState();
}

class _HowItWorksState extends State<HowItWorks> {
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: SingleChildScrollView(
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
                  Text("How it works",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
            ),
            stepHeader('assets/1.png', "No unwanted salesperson"),
            stepMiddle(
                "Who knows your home better than you? There is no need for any insistent salesperson to come to your home to quote. You can survey quickly and easily in few minutes ."),
            stepFooter('assets/calc.png'),
            stepHeader('assets/2.png', "We quote our final price"),
            stepMiddle(
                "We guarantee the fixed final online price. The price you’re quoted is the final price you pay (includes new boiler cost, plus installation charges). it's NOT subject to change. There are no hidden extras for your new boiler."),
            stepFooter('assets/process.png'),
            stepHeader('assets/3.png', "Best boiler and date of installation"),
            stepMiddle(
                "We have a range of boilers available, on the basis of your survey we will suggest the best suited boilers for your requirements. After you choose your new boiler, you can choose installation date."),
            stepFooter('assets/boiler.png'),
            stepHeader('assets/4.png', "Payment Option"),
            stepMiddle(
                "We have many different mode of payment. You can choose whatever is suitable for you."),
            stepFooter('assets/boiler1.png'),
            stepHeader('assets/5.png', "Installation: The final step"),
            stepMiddle(
                "The final step is to have a cuppa and stay relaxed! We take care of everything from here. Your new boiler is going to be provided to you on your chosen installation date and our installer will get you warm very soon."),
            Container(
                width: 150,
                margin: EdgeInsets.only(
                    bottom: 10,
                    left: MediaQuery.of(context).size.width / 2 - 75),
                child: RaisedButton(
                    elevation: 10,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GetQuoteWebview(),
                      ));
                    },
                    child: Text(
                      "Get Quote",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }

  Widget stepHeader(String imagePath, String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imagePath),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  Widget stepMiddle(String description) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        description,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget stepFooter(String imagePath) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        imagePath,
        width: 100,
        height: 100,
      ),
    );
  }
}
