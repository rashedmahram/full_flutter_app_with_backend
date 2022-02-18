import 'package:flutter/material.dart';

class AdaptiveWidget extends StatefulWidget {
  const AdaptiveWidget({Key? key}) : super(key: key);

  @override
  _ShowSearchWidgetState createState() => _ShowSearchWidgetState();
}

class _ShowSearchWidgetState extends State<AdaptiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ios App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider.adaptive(
              value: 1,
              onChanged: (double value) {},
            ),
            SwitchListTile.adaptive(
              title: const Text("Switch List Tile"),
              value: false,
              onChanged: (bool newValue) {},
            ),
            Switch(value: false, onChanged: (bool newValue) {}),
            Icon(Icons.adaptive.share),
            const CircleAvatar(),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
