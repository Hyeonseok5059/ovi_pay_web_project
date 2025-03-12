import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/dimensions.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: WHITE_COLOR,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'OviPay',
            style: TextStyle(
              fontSize: Dimensions.directFontSize3,
              fontWeight: FontWeight.bold,
              color: YELLOW90_COLOR,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'OviPay 관리자 페이지',
                  style: TextStyle(
                    fontSize: Dimensions.directFontSize4,
                    fontWeight: FontWeight.bold,
                    color: RED46_COLOR,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.language, color: BLACK_COLOR),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.menu, color: BLACK_COLOR),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
