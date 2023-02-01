
import 'dart:io';

import 'package:hello_flutter2/ch14_image_editor/screens/image_editor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageEditor(),
    ),
  );
}
