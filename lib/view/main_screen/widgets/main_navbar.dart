import 'package:demo_app/constants.dart';
import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bangaladish",
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 18,
                  ),
                ),
                Text('Narshingdi')
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
