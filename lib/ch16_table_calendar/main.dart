import 'package:flutter/material.dart';
import 'package:hello_flutter2/ch16_table_calendar/screens/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/schedule.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();
  await Hive.initFlutter();
  // 어답터 등록하기
  Hive.registerAdapter<Schedule>(ScheduleAdapter());
  final schedules = await Hive.openBox<Schedule>('schedules');
  runApp(
    MaterialApp(
      home: TableCalendar(),
    ),
  );
}
