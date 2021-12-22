// ignore_for_file: unused_import, file_names, prefer_const_constructors, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(myImageListView());
}

class myImageListView extends StatelessWidget {
  const myImageListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image List View'),
          backgroundColor: Colors.purple,
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
        leading: Image(image: NetworkImage('https://lh5.googleusercontent.com/proxy/p0WCx5wMiACRUfxlqxxvxcBMPE4lXNsBsEdWSg9_iVjVOugvFOVsY8GXkqusrotzmuBW3-GJcroBsW07_WCilwFC6eOZNL_O94VbSLYom6hFZVqKPFc-WB2e8qtstIOrmEih3kGyfRdjdI8gPgqKN_TGcbjigw=w203-h135-k-no'),),
        title: Text('Great wall of China'),
        subtitle: Text('Huairou District, China \nPopulation: 373,000'),
        trailing: Icon(Icons.navigate_next),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Image(image: NetworkImage('https://www.planetware.com/photos-large/F/eiffel-tower.jpg')),
        title: Text('Eiffel Tower'),
        subtitle: Text('7th arrondissement, Paris, France \nPopulation: 2.1m'),
        trailing: Icon(Icons.navigate_next),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Image(image: NetworkImage('https://lh5.googleusercontent.com/p/AF1QipNKTrq_VzWEb9vJLdBRKdUlmB1eVu9f2kUV8Slo=w203-h135-k-no')),
        title: Text('Egyptian Pyramids'),
        subtitle: Text('Giza City, Giza, Greater Cairo, Egypt \nPopulation: 20.9m'),
        trailing: Icon(Icons.navigate_next),
      )
    ],
  );
  return listview;
}
