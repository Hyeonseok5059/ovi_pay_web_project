import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<String> images = [
    'assets/images/mtb_riding_1.jpg',
    'assets/images/mtb_riding_2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 400,
          child: PageView.builder(
            controller: _controller,
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(images[index], fit: BoxFit.cover);
            },
          ),
        ),
        Positioned(
          left: 20,
          top: 180,
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 30, color: WHITE_COLOR),
            onPressed: () {
              _controller.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
        ),
        Positioned(
          right: 20,
          top: 180,
          child: IconButton(
            icon: Icon(Icons.arrow_forward, size: 30, color: WHITE_COLOR),
            onPressed: () {
              _controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
        ),
      ],
    );
  }
}
