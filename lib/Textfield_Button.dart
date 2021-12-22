import 'package:flutter/material.dart';

void main() {
  runApp(mainApp());
}

class mainApp extends StatefulWidget {
  const mainApp({Key? key}) : super(key: key);
  @override
  // Textfield createState() => Textfield();
  myButton createState() => myButton();
}

class Textfield extends State<mainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to hide debug label
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Textfield'),
        ),

        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Your name',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            ),
          ),
        ),

        // backgroundColor: Colors.blue,
      ),
    );
  }
}

class myButton extends State<mainApp> {
  var num1 = 0, num2 = 0;
  var answer = "";

  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      answer = (num1 + num2).toString();
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      answer = (num1 * num2).toString();
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      answer = (num1 / num2).toString();
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      answer = (num1 - num2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to hide debug label
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Simple App using Textfield and button'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'First number',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                ),
                controller: t1,
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Second number',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                ),
                controller: t2,
              ),

              Padding(padding: EdgeInsets.only(top: 15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: add, child: Text('+')),
                  ElevatedButton(onPressed: multiplication, child: Text('*')),
                  ElevatedButton(onPressed: division, child: Text('/')),
                  ElevatedButton(onPressed: subtraction, child: Text('-')),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),
              Text("The answer is: $answer",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        // backgroundColor: Colors.blue,
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables,camel_case_types, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, file_names
