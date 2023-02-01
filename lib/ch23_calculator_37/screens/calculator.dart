import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_flutter2/ch23_calculator_37/components/display.dart';
import 'package:hello_flutter2/ch23_calculator_37/components/keyboard.dart';
import 'package:hello_flutter2/ch23_calculator_37/providers/calculator_provider.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final CalculatorProvider provider = CalculatorProvider();

  _onPressed(String command){
    setState(() {
      provider.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Display(text: provider.value,),
          Keyboard(onPressed: _onPressed,)
        ],
      ),
    );
  }
}
