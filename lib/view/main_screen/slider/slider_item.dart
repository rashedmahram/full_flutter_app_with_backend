import 'package:demo_app/view/main_screen/widgets/slider_card.dart';
import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SliderItemImage(),
          SliderCard(),
        ],
      ),
    );
  }
}

class SliderItemImage extends StatelessWidget {
  const SliderItemImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      margin: EdgeInsets.only(right: 13, left: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('assets/food1.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
