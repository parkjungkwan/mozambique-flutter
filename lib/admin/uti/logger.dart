import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:hello_flutter2/ch16_table_calendar/models/schedule.dart';
class Logger {
  static void showToast(String message){
    Fluttertoast.showToast(msg: message,
    backgroundColor: Colors.white,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM);
  }
  static int selectedDateCounter(DateTime selectedDate){
    Box<Schedule> schedules = Hive.box<Schedule>("schedulers");
    schedules.values.where((schedule) => schedule.date == selectedDate)
        .forEach((schedule) => print('All First Value Data Showing Result'));
    return 0;
  }
}