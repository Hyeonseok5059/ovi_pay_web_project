import 'package:flutter/material.dart';
import 'package:ovi_pay_web_project/presentation/widgets/header.dart';
import 'package:ovi_pay_web_project/presentation/widgets/footer.dart';
import 'package:ovi_pay_web_project/presentation/widgets/image_slider.dart';
import 'package:ovi_pay_web_project/presentation/widgets/category_selector.dart';
import 'package:ovi_pay_web_project/presentation/widgets/recommendation_list.dart';
import 'package:ovi_pay_web_project/presentation/widgets/community_board.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/dimensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Header(), // 상단 헤더
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlider(), // 메인 이미지 슬라이드
            SizedBox(height: Dimensions.interval1Y(context)),
            CategorySelector(), // 카테고리 선택
            SizedBox(height: Dimensions.interval2Y(context)),
            RecommendationList(), // 추천 상품 리스트
            SizedBox(height: Dimensions.interval2Y(context)),
            CommunityBoard(), // 자유게시판
            SizedBox(height: Dimensions.interval3Y(context)), // 푸터와의 간격 확보
          ],
        ),
      ),
      bottomNavigationBar: Footer(), // 반응형 푸터 설정
    );
  }
}
