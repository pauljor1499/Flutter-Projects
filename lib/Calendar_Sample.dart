// ignore_for_file: camel_case_types, unused_import, override_on_non_overriding_member, file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_final_fields, unnecessary_new, unnecessary_this

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  myCalendar createState() => myCalendar();
}

class myCalendar extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calendar'),

          //arrow back
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            // onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()),),
            onPressed:() => context,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              // Padding(padding: EdgeInsets.all(20)),
              sampleCalendar(),
            ],
          ),
        ),
      ),
    );
  }
}

sampleCalendar() {
  var cal = SfCalendar(
    cellEndPadding: 5,
    showDatePickerButton: true,
    view: CalendarView.week,
    showNavigationArrow: true,
    
    dataSource: MeetingDataSource(
      _getDataSource()),
      monthViewSettings: MonthViewSettings(
        appointmentDisplayMode: MonthAppointmentDisplayMode.appointment
      ),

  );
  return cal;
}


List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(Meeting(
      'Conference', startTime, endTime, const Color(0xFF0F8640), false));
  return meetings;
}


class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}