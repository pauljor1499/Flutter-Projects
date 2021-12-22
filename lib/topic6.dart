//Paul Vincent L. Jor

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers
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
          backgroundColor: Colors.blueGrey,
          title: Text('Welcome to Flutter'),
        ),

        body: Container(
          child: Row(
            children: [
              //conatiner1
              Expanded(
                child: Container(
                  child: Text('Red'),
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                  //width: 80,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.red,
                  ),
                  
                ),
              ),

              //container2
              Expanded(
                child: Container(
                  child: Text('Blue'),
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                  //width: 80,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.blue,
                  ),
                ),
              ),

              //container3
              Expanded(
                child: Container(
                  child: Text('Yellow'),
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  //width: 80,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
