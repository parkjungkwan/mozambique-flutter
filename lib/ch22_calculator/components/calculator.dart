import 'package:flutter/cupertino.dart';

class CalculatorScreen extends StatelessWidget {

  late String titleAdd;
  late String titleSub;
  late String titleMul;
  late String titleDiv;

  CalculatorScreen({
    required Key key,
    titleAdd,
    titleSub,
    titleMul,
    titleDiv
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
