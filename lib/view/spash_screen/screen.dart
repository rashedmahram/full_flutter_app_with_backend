import 'package:demo_app/view/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SplashScreenView(
          duration: 3000,
          imageSrc: "assets/splashscreen.jpeg",
          imageSize: 400,
          backgroundColor: Colors.white,
          navigateRoute: HomeScreen(),
          
        ),
      ),
    );
  }
}
