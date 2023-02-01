import 'package:flutter/cupertino.dart';

class CoupleImage extends StatelessWidget {
  const CoupleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // Expanded 추가
      child: Center(
        // ➊ 이미지 중앙정렬
        child: Image.asset(
          'assets/ch09_u_and_i/images/middle_image.png',

          // ➋ 화면의 반만큼 높이 구현
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
    );
  }
}
