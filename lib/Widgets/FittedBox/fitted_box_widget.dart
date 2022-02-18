import 'package:flutter/material.dart';

class FittedBoxWidget extends StatefulWidget {
  const FittedBoxWidget({Key? key}) : super(key: key);

  @override
  _FittedBoxWidgetState createState() => _FittedBoxWidgetState();
}

class _FittedBoxWidgetState extends State<FittedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          // height: 150,
          height: 50,
          color: Colors.red,
          padding: const EdgeInsets.all(12),
          child:const FittedBox(
            child: Text("Flutter Widgets",style: TextStyle(
              fontSize: 100,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
          ),
        ),
      ),
    );
  }
}
