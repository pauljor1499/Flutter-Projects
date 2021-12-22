// ignore_for_file: unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calendar_Sample.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:math_expressions/math_expressions.dart';
import 'buttons.dart';

void main() {
  runApp(myNavBar());
}

class myNavBar extends StatefulWidget {
  const myNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

int val = 1;

class _BottomNavBarState extends State<myNavBar> {
  int _current = val;

  //tab
  final _cont = [
    myCalendar(),
    myCalculator(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Bottom Nav Barss'),
        //   backgroundColor: Colors.purple,
        // ),

        body: _cont[_current],

        //Bottom Navigation bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _current,
          selectedFontSize: 20,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: ('Calendar'),
                backgroundColor: Colors.amberAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: ('Calculator'),
                backgroundColor: Colors.amberAccent),
          ],
          //Click Icon
          onTap: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, file_names

class myCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Calendar'),
          backgroundColor: Colors.blueAccent,
          //back arrow
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => myCalculator()),
              );
            },
          ),
        ),
        body: Container(
          child: setCalendar(),
          margin: EdgeInsets.only(top: 20),
        ),
      ),
    );
  }
}

setCalendar() {
  var cal = SfCalendar(
    view: CalendarView.month,
  );
  return cal;
}

class myCalculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<myCalculator> {
  var userInput = '';
  var answer = '';

  // Array of button
  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //back arrow
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          // onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()),),
          onPressed: () => setState(() {
              val = 0;
            }),

        ),
        title: Text("Calculator"),
      ), //AppBar
      backgroundColor: Colors.blue[900],
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    // Clear Button
                    if (index == 0) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }

                    // +/- button
                    else if (index == 1) {
                      return MyButton(
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // % Button
                    else if (index == 2) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // Delete Button
                    else if (index == 3) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
                    // Equal_to Button
                    else if (index == 18) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.orange[700],
                        textColor: Colors.white,
                      );
                    }

                    //  other buttons
                    else {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: isOperator(buttons[index])
                            ? Colors.blueAccent
                            : Colors.white,
                        textColor: isOperator(buttons[index])
                            ? Colors.white
                            : Colors.black,
                      );
                    }
                  }), // GridView.builder
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
