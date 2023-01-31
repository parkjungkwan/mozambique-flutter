import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hello_flutter2/ch21_counter/provider/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Consumer<CounterProvider>(
        builder: (context, counterProvider, child) => Text(
          Provider.of<CounterProvider>(context).count.toString(),
          style: TextStyle(fontSize: 60),
        ),
      )
    );
  }
}
