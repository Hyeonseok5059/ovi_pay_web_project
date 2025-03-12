import 'package:flutter/material.dart';

class Dimensions {
  // 기준 화면 크기
  static const double referenceWidth = 393.0;
  static const double referenceHeight = 852.0;

  // 현재 화면 크기를 기준으로 동적 크기 반환
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // 비율 기반 크기 반환 함수
  static double widthRatio(BuildContext context, double value) {
    return screenWidth(context) * (value / referenceWidth);
  }

  static double heightRatio(BuildContext context, double value) {
    return screenHeight(context) * (value / referenceHeight);
  }

  // 공통적으로 사용하는 간격 및 크기 변수
  static double interval1Y(BuildContext context) =>
      heightRatio(context, 30); // 기존 30
  static double interval2Y(BuildContext context) =>
      heightRatio(context, 40); // 기존 40
  static double interval3Y(BuildContext context) =>
      heightRatio(context, 50); // 기존 50
  static double appBarHeight(BuildContext context) =>
      heightRatio(context, 80); // 기존 80
  static double fontsize1(BuildContext context) => heightRatio(context, 22);
  static double fontsize2(BuildContext context) => heightRatio(context, 14);
  static double fontsize3(BuildContext context) => heightRatio(context, 24);
  static double fontsize4(BuildContext context) => heightRatio(context, 16);

  static double directFontSize1 = 22;
  static double directFontSize2 = 14;
  static double directFontSize3 = 24;
  static double directFontSize4 = 16;
}
