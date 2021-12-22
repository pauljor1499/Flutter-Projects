//Paul Vincent L. Jor

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names
import 'package:flutter/material.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rows and columns"),
          backgroundColor: Colors.blue,
        ),

        body: Column(
          children: [

            //column1
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 2.5),
                color: Colors.yellow,
              ),
            ),

            //column2
            Expanded(
              flex: 5,
              child: Row(
                children: [

                  //row1
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 2.5, 2.5, 2.5),
                      color: Colors.redAccent,
                    ),
                  ),

                  //row2
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [

                        //column1
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(2.5, 2.5, 5, 2.5),
                            color: Colors.blueGrey,
                          )
                        ),

                        //column2
                        Expanded(
                          flex: 8,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(2.5, 2.5, 5, 2.5),
                            color: Colors.pinkAccent,
                          )
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            //column3
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.fromLTRB(5, 2.5, 5, 5),
                color: Colors.purple
              ),
            ),
            
          ],
        ),
      ),
    );

  }
}
