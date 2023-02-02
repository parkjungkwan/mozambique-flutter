import 'package:flutter/material.dart';
import 'package:hello_flutter2/ch16_table_calendar/screens/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:hive_flutter/hive_flutter.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();
  await Hive.initFlutter();
  await Hive.openBox('schedules');
  final schedule_box = Hive.box('schedules');
  runApp(
    MaterialApp(
      home: TableCalendar(),
    ),
  );
}
