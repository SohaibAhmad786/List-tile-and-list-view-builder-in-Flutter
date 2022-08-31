import 'package:flutter/material.dart';

class IphoneCalculatorClone extends StatefulWidget {
  const IphoneCalculatorClone({Key? key}) : super(key: key);

  @override
  State<IphoneCalculatorClone> createState() => IphoneCcalculatorStateClone();
}

class IphoneCcalculatorStateClone extends State<IphoneCalculatorClone> {
  int firstValue = 0;
  int secondValue = 0;
  String ans = "";
  String operator = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.vertical,
        reverse: false,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              text(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  greycirclebutton("AC"),
                  greycirclebutton("+/-"),
                  greycirclebutton("%"),
                  ambercirclebutton("/")
                ],
              ),
              Row(
                children: [
                  darkcirclebutton("7"),
                  darkcirclebutton("8"),
                  darkcirclebutton("9"),
                  ambercirclebutton("X")
                ],
              ),
              Row(
                children: [
                  darkcirclebutton("4"),
                  darkcirclebutton("5"),
                  darkcirclebutton("6"),
                  ambercirclebutton("-")
                ],
              ),
              Row(
                children: [
                  darkcirclebutton("1"),
                  darkcirclebutton("2"),
                  darkcirclebutton("3"),
                  ambercirclebutton("+")
                ],
              ),
              Row(
                children: [
                  largecirclebutton("0"),
                  darkcirclebutton("."),
                  ambercirclebutton("=")
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  //_________________________________ Functions _______________________________
  //___________________________________________________________________________
  //_________________________________ Text ____________________________________
  text() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        alignment: Alignment.centerRight,
        color: Colors.black,
        child: Text(
          ans.toString(),
          style: const TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  //_____________________________ Grey button design ___________________________
  greycirclebutton(String txt) {
    return InkWell(
      onTap: () {
        setState(() {
          if (txt == "AC") {
            ans = "";
          } else if (txt == "%") {
            operator = "%";
            firstValue = int.parse(ans);
            ans = "";
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
        child: Container(
          alignment: Alignment.center,
          height: 85,
          width: 85,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(45),
            ),
            color: Colors.grey,
          ),
          child: Text(
            txt,
            style: const TextStyle(fontSize: 40, color: Colors.black),
          ),
        ),
      ),
    );
  }

  //____________________________Amber button design ___________________________
  ambercirclebutton(String txt) {
    return InkWell(
      onTap: () {
        setState(() {
          if (txt == "=") {
            secondValue = int.parse(ans);
            computation();
          } else if (txt == "/") {
            operator = "/";
            firstValue = int.parse(ans);
            ans = "";
          } else if (txt == "X") {
            operator = "X";
            firstValue = int.parse(ans);
            ans = "";
          } else if (txt == "+") {
            operator = "+";
            firstValue = int.parse(ans);
            ans = "";
          } else if (txt == "-") {
            operator = "-";
            firstValue = int.parse(ans);
            ans = "";
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
        child: Container(
          alignment: Alignment.center,
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(45),
            ),
            color: Colors.amber.shade800,
          ),
          child: Text(
            txt,
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }

  //____________________________Dark button design ___________________________
  darkcirclebutton(String txt) {
    return InkWell(
      onTap: () {
        setState(() {
          ans += txt;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
        child: Container(
          alignment: Alignment.center,
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(45),
            ),
            color: Colors.grey.shade900,
          ),
          child: Text(
            txt,
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }

  //____________________________Large button design ___________________________
  largecirclebutton(String txt) {
    return InkWell(
      onTap: () {
        setState(() {
          ans += txt;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 10, bottom: 8, top: 8),
        child: Container(
          alignment: Alignment.centerLeft,
          height: 85,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(45),
            ),
            color: Colors.grey.shade900,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              txt,
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  computation() {
    setState(() {
      if (operator == "+") {
        ans = (firstValue + secondValue).toString();
      } else if (operator == "-") {
        ans = (firstValue - secondValue).toString();
      } else if (operator == "*") {
        ans = (firstValue * secondValue).toString();
      } else if (operator == "/") {
        ans = (firstValue ~/ secondValue).toString();
      } else if (operator == "%") {
        ans = (firstValue % secondValue).toString();
      }
    });
  }
}