import 'package:flutter/cupertino.dart';
import 'package:hello_flutter2/ch22_calculator/components/button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  const ButtonRow(this.buttons, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1, // 부모의 남은 공간을 채운다
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: buttons.fold([], (list, button){
            list.isEmpty ? list.add(button) : list.addAll([const SizedBox(width: 1,), button]) ;
            return list;}),
    ));
  }


}
