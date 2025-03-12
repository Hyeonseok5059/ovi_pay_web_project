import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/dimensions.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: BLACK_COLOR,
      child: Column(
        mainAxisSize: MainAxisSize.min, // 최소 높이만 차지하도록 설정
        children: [
          Text(
            'Copyright © 2025 (주)PNH GLOBAL All rights reserved.11111111111111111111111111111111111111111111111111111',
            style: TextStyle(
              color: WHITE_COLOR,
              fontSize: Dimensions.directFontSize2,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            'Copyright © 2025 (주)PNH GLOBAL All rights reserved.',
            style: TextStyle(
              color: WHITE_COLOR,
              fontSize: Dimensions.directFontSize2,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            'Copyright © 2025 (주)PNH GLOBAL All rights reserved.',
            style: TextStyle(
              color: WHITE_COLOR,
              fontSize: Dimensions.directFontSize2,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
