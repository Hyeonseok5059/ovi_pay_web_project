import 'package:flutter/material.dart';

import '../../core/themes/dimensions.dart';

class RecommendationList extends StatelessWidget {
  final List<String> recommendations = ['#A #B #C #D #E #F #G'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          recommendations.map((recommendation) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                recommendation,
                style: TextStyle(
                  fontSize: Dimensions.directFontSize4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }).toList(),
    );
  }
}
