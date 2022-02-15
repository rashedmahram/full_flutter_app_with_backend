import 'package:demo_app/constants.dart';
import 'package:demo_app/view/main_screen/widgets/slider_card_icons.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 10,
      margin: EdgeInsets.only(
        top: 140,
        left: 40,
        right: 40,
        bottom: 20/4,
      ),
      color: Colors.transparent,
      shadowColor: Colors.black38,
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Chinese Side"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Wrap(
                  children: List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star,
                      color: kMainColor,
                      size: 15,
                    ),
                  ),
                ),
                Text("4.5"),
                Text("1245 Comments"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconTitleWidget(
                  color: Colors.yellow.shade800,
                  icon: Icons.circle_sharp,
                  title: "Normal",
                ),
                IconTitleWidget(
                  color: kMainColor,
                  icon: Icons.location_on,
                  title: "1.7m",
                ),
                IconTitleWidget(
                  color: kIconColor1,
                  icon: Icons.access_time_rounded,
                  title: "32 min",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
