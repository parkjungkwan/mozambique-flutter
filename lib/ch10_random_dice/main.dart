import 'package:flutter/material.dart';
import 'package:hello_flutter2/ch10_random_dice/constants/colors.dart';
import 'package:hello_flutter2/ch10_random_dice/screen/random_dice.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        sliderTheme: SliderThemeData(  // Slider 위젯 관련
          thumbColor: primaryColor,    // 동그라미 색
          activeTrackColor: primaryColor,  // 이동한 트랙 색

          // 아직 이동하지 않은 트랙 색
          inactiveTrackColor: primaryColor.withOpacity(0.3),         ),
        // BottomNavigationBar 위젯 관련
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,     // 선택 상태 색
          unselectedItemColor: secondaryColor, // 비선택 상태 색
          backgroundColor: backgroundColor,    // 배경 색
        ),
      ),
      home: const RandomDice(),
    ),
  );
}
