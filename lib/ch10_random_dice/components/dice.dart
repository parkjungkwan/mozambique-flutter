import 'package:hello_flutter2/ch10_random_dice/constants/colors.dart';
import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  final int number;
  const Dice({ required this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        // ➊ 주사위 이미지
        Center(
          child: Image.asset('assets/ch10_random_dice/images/$number.png'),
        ),
        const SizedBox(height: 32.0),
        Text(
          '행운의 숫자',
          style: TextStyle(
            color: secondaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12.0),
        Text(
          number.toString(),  // ➋ 주사위 값에 해당되는 숫자
          style: const TextStyle(
            color: primaryColor,
            fontSize: 60.0,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
