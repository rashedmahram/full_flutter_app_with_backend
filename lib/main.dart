import 'package:demo_app/Widgets/FittedBox/fitted_box_widget.dart';
import 'package:demo_app/Widgets/Sterpper/stepper_dart.dart';
import 'package:demo_app/view/spash_screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      title: 'Material App',
      home: FittedBoxWidget(),
    );
  }
}

