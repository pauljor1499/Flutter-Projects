// ignore_for_file: unused_import, file_names, prefer_const_constructors, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(myListTile());
}

class myListTile extends StatelessWidget {
  const myListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Using ListView'),
            backgroundColor: Colors.amberAccent,
          ),
          body: myListView1()),
    );
  }
}

myListView1() {
  var listview = ListView(
    children: const [
      ListTile(
        leading: Icon(Icons.nature_people),
        title: Text('List tile 1'),
        subtitle: Text('subtitile of list tile 1'),
        trailing: Icon(Icons.add_a_photo),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Icon(Icons.nature_people),
        title: Text('List tile 2'),
        subtitle: Text('subtitile of list tile 2'),
        trailing: Icon(Icons.add_a_photo),
      ),

      Divider(thickness: 1.0),

      ListTile(
        leading: Icon(Icons.nature_people),
        title: Text('List tile 3'),
        subtitle: Text('subtitile of list tile 3'),
        trailing: Icon(Icons.add_a_photo),
      )
    ],
  );
  return listview;
}
