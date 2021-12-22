// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Demo());
}

//stl
class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text(
            'Welcome to Flutter',
            style: TextStyle(fontSize: 30),
          ),
          
          backgroundColor: Colors.amberAccent,
          toolbarHeight: 80,
        ),

        body: Container( 
        margin: const EdgeInsets.all(8),

        decoration: BoxDecoration(
          color: Colors.teal,
          
          border: Border.all(
            width: 10,
            color: Colors.amberAccent,
          ),

          borderRadius: const BorderRadius.all(
            Radius.circular(14)
          ),

        ),
      ),
        
      ),
    );
  }
}
