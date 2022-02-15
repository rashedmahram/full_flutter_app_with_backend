import 'package:demo_app/view/main_screen/slider/slider_item.dart';
import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: SliderItem(),
    );
  }
}
