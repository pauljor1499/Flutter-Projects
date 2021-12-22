//Paul Vincent L. Jor

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // AssetImage assetImage = AssetImage('assets/spongebob.png');
    // Image image = Image(image: assetImage);
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
          backgroundColor: Colors.amber,
        ),

        body: Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.fineartamerica.com/images-medium-large-5/philippine-eagle-against-sunset-clouds-per-andre-hoffmann.jpg')
            ),
          ),

          // child: Picture(),
          // child: image,
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/spongebob.png');
    Image image = Image(image: assetImage);
    
    return Container(
      child: image,
    );
  }
}

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, camel_case_types
