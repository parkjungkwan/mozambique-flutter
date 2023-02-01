import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DDay extends StatelessWidget {
  final GestureTapCallback onHeartPressed;
  final DateTime firstDay;

  const DDay({
    required this.onHeartPressed,
    required this.firstDay,
    super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          // 최상단 U&I 글자
          'U&I',
          style: textTheme.displayLarge,
        ),
        const SizedBox(height: 16.0),
        Text(
          // 두번째 글자
          '우리 처음 만난 날',
          style: textTheme.bodyLarge,
        ),
        Text(
          // 임시로 지정한 만난 날짜
          '${firstDay.year}.${firstDay.month}.${firstDay.day}',
          style: textTheme.displayMedium,
        ),
        const SizedBox(height: 16.0),
        IconButton(
          // 하트 아이콘 버튼
          iconSize: 60.0,
          onPressed: onHeartPressed,
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          // 만난 후 DDay
          'D+${DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1}',
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}