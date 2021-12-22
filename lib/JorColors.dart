//Paul Vincent L. Jor


import 'package:flutter/material.dart';

void main() {
  runApp(myColor());
}

class myColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colors"),
          backgroundColor: Colors.blue,
        ),

        body: Column(
          children: [

            //row1
            Expanded(
              flex: 2,
              child: Row(
                children: [

                  //column1
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.redAccent,
                    ),
                  ),

                  //column2
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.yellow,
           
                    ),
                  ),

                  //column3
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),

            //row2
            Expanded(
              flex: 2,
              child: Row(
                children: [

                  //column1
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.redAccent,
                    ),
                  ),

                  //column2
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.green,
           
                    ),
                  ),

                  //column3
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),

            //row3
            Expanded(
              flex: 2,
              child: Row(
                children: [

                  //column1
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),

                  //column2
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.blue,
           
                    ),
                  ),

                  //column3
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),

            //row4
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white
              ),
            ),
            
          ],
        ),
      ),
    );

  }
}

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, camel_case_types

