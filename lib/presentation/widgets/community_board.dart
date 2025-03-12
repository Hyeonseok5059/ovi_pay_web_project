import 'package:flutter/material.dart';

import '../../core/themes/dimensions.dart';

class CommunityBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '자유게시판',
          style: TextStyle(
            fontSize: Dimensions.directFontSize1,
            fontWeight: FontWeight.bold,
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text(
              'OviPay 오픈을 축하드립니다',
              style: TextStyle(
                fontSize: Dimensions.directFontSize2,
                fontWeight: FontWeight.normal,
              ),
            ),
            subtitle: Text(
              '2025-03-12 00:00:00 · 조회 100',
              style: TextStyle(
                fontSize: Dimensions.directFontSize2,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
