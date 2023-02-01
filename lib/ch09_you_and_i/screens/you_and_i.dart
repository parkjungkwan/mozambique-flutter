import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../components/couple_image.dart';
import '../components/d_day.dart';

class YouAndI extends StatefulWidget {

  const YouAndI({super.key});

  @override
  State<YouAndI> createState() => _YouAndIState();
}

class _YouAndIState extends State<YouAndI> {
  DateTime firstDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        // ➊ 시스템 UI 피해서 UI 그리기
        top: true,
        bottom: false,
        child: Column(
          // ➋ 위, 아래 끝에 위젯 배치
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          // 반대 축 최대 크기로 늘리기
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DDay(

              // ➎ 하트 눌렀을때 실행할 함수 전달하기
              onHeartPressed: onHeartPressed,
              firstDay: firstDay,
            ),
            CoupleImage(),
          ],
        ),
      ),
    );
  }

  void onHeartPressed(){  // ➍ 하트 눌렀을때 실행할 함수
    showCupertinoDialog(  // ➋ 쿠퍼티노 다이얼로그 실행
      context: context,
      builder: (BuildContext context) {
        return Align(  // ➊ 정렬을 지정하는 위젯
          alignment: Alignment.bottomCenter,  // ➋ 아래 중간으로 정렬
          child: Container(
            color: Colors.white,  // 배경색 흰색 지정
            height: 300,  // 높이 300 지정
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime date) {
                setState(() {
                  firstDay = date;
                });
              },
            ),
          ),
        );
      },
      barrierDismissible: true,
    );
  }
}



