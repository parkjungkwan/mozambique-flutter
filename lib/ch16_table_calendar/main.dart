
import 'package:flutter/material.dart';
import 'package:hello_flutter2/ch16_table_calendar/screens/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  runApp(
    MaterialApp(
      home: TableCalendar(),
    ),
  );
}
