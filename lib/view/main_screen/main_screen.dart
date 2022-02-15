import 'package:demo_app/view/main_screen/slider/slider.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/view/main_screen/widgets/main_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          AppNavBar(),
          MySlider(),
          Expanded(
            flex: 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Popular", style: Theme.of(context).textTheme.headline5),
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                Text("Food pairing",
                    style: TextStyle(color: Colors.black38)),
                    
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
