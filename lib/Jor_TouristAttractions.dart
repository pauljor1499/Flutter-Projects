// ignore_for_file: unused_import, file_names, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(TouristAttractions());
}

class TouristAttractions extends StatelessWidget {
  const TouristAttractions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tourist Attractions'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: myListView(),
          margin: EdgeInsets.only(top: 20),
        ),
      ),
    );
  }
}

myListView() {
  var listview = ListView(
    children: const [
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text('Great wall of China'),
        subtitle: Text('Huairou District, China \nPopulation: 373,000'),
        trailing: Icon(Icons.navigate_next),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Icon(Icons.circle),
        title: Text('Eiffel Tower'),
        subtitle: Text('7th arrondissement, Paris, France \nPopulation: 2.1m'),
        trailing: Icon(Icons.navigate_next),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Icon(Icons.radio),
        title: Text('Egyptian Pyramids'),
        subtitle: Text('Giza City, Giza, Greater Cairo, Egypt \nPopulation: 20.9m'),
        trailing: Icon(Icons.navigate_next),
      )
    ],
  );
  return listview;
}
