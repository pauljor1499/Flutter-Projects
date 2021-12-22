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
          title: Text("Rows and Columns"),
          backgroundColor: Colors.grey,
        ),

        body: Column(
          children: [

            //column1
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 2.5),
                color: Colors.yellow,
              ),
            ),

            //colum2
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  //row1
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 2.5, 2.5, 2.5),
                      color: Colors.blue,
                    ),
                  ),

                  //row2
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(2.5, 2.5, 5, 2.5),
                      color: Colors.pink,
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
                color: Colors.greenAccent
              ),
            ),
            
          ],
        ),
      ),
    );

  }
}
