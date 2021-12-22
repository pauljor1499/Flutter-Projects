// ignore_for_file: unused_import, file_names, prefer_const_constructors, duplicate_ignore, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(DynamicListView());
}

class DynamicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Dynamic ListView')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myListView(context);
  }
}

Widget myListView(BuildContext context) {
  final cities = [
    'Digos City',
    'Davao City',
    'Tagum City',
    'Sta. Cruz',
    'Bansalan',
  ];
  Divider(thickness: 1.0);
  return ListView.separated(
    itemCount: cities.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(cities[index]),
      );
    },
    separatorBuilder: (context, index) {
      return Divider();
    },
  );

}
