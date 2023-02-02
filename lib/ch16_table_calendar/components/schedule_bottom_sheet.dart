import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import '../../admin/uti/logger.dart';
import '../../admin/uti/validator.dart';
import '../constants/colors.dart';
import '../models/schedule.dart';
import 'custom_text_field.dart';


class ScheduleBottomSheet extends StatefulWidget {

  final DateTime selectedDate;

  const ScheduleBottomSheet({super.key, required this.selectedDate});


  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {

  final GlobalKey<FormState> formKey = GlobalKey();

  late int startTime; // 시작 시간 저장 변수
  late int endTime; // 종료 시간 저장 변수
  late String content;
  String get id => const Uuid().v4();

  DateTime? get selectedDate => null; // 일정 내용 저장 변수

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    Logger.showToast("2 ScheduleBottomSheet: ");
    return Form(
      // ➊ 텍스트 필드를 한 번에 관리할 수 있는 폼
      key: formKey, // ➋ Form을 조작할 키값
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 2 +
              bottomInset, // ➋ 화면 반 높이에 키보드 높이 추가하기
          color: Colors.white,
          child: Padding(
            padding:
            EdgeInsets.only(left: 8, right: 8, top: 8, bottom: bottomInset),
            child: Column(
              // ➋ 시간 관련 텍스트 필드와 내용관련 텍스트 필드 세로로 배치
              children: [
                Row(
                  // ➊ 시작 시간 종료 시간 가로로 배치
                  children: [
                    Expanded(
                      child: CustomTextField(
                        // 시작시간 입력 필드
                        label: '시작 시간',
                        isTime: true,
                        onSaved: (String? val) {
                          // 저장이 실행되면 startTime 변수에 텍스트 필드 값 저장
                          startTime = int.parse(val!);
                        },
                        validator: Validator.time,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: CustomTextField(
                        // 종료시간 입력 필드
                        label: '종료 시간',
                        isTime: true,
                        onSaved: (String? val) {
                          // 저장이 실행되면 endTime 변수에 텍스트 필드 값 저장
                          endTime = int.parse(val!);
                        },
                        validator: Validator.time,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Expanded(
                  child: CustomTextField(
                    // 내용 입력 필드
                    label: '내용',
                    isTime: false,
                    onSaved: (String? val) {
                      // 저장이 실행되면 content 변수에 텍스트 필드 값 저장
                      content = "test22";
                    },
                    validator: Validator.content,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    // [저장] 버튼
                    // ➌ [저장] 버튼
                    onPressed: onSavePressed,
                    style: ElevatedButton.styleFrom(
                      primary: PRIMARY_COLOR,
                    ),
                    child: Text('저장'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSavePressed() async {
    Logger.showToast("3 onSavePressed: ");
    final schedules = Hive.box<Schedule>('schedules');
    String temp = const Uuid().v4();
    Logger.showToast("4 ID: $temp");
    Schedule schedule = Schedule(temp, "aaa", DateTime.now(), 2, 6);
    schedules.put(temp,schedule);
    final Schedule? returnSchedule = schedules.get(temp);
    final String res = returnSchedule.toString();
    Logger.showToast("5 final: $res");
      // Navigator.of(context).pop();


  }

}
