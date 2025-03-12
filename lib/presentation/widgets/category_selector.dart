import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';

class CategorySelector extends StatelessWidget {
  final List<String> categories = [
    'ALL',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'OTHERS',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        spacing: 10,
        children:
            categories.map((category) {
              return Chip(
                label: Text(category, style: TextStyle(color: WHITE_COLOR)),
                backgroundColor: YELLOW90_COLOR,
              );
            }).toList(),
      ),
    );
  }
}
