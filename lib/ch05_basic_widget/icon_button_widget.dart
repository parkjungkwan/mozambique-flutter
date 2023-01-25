import 'package:hello_flutter2/ch05_basic_widget/outlined_button_widget.dart';
import 'package:flutter/material.dart';

class IconButtonWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
            ),
          ),
        ),
      ),
    );
  }
}
