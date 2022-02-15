import 'package:flutter/material.dart';

class IconTitleWidget extends StatelessWidget {
  Color color;
  IconData icon;
  String title;
  IconTitleWidget({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          width: 2,
        ),
        Text(title)
      ],
    );
  }
}
