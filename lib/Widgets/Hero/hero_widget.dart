import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  _ShowSearchWidgetState createState() => _ShowSearchWidgetState();
}

class _ShowSearchWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero"),
      ),
      body: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PageRoute(
                key: widget.key,
              ),
            ),
          );
        },
        child: Hero(
          tag: "Tag",
          child: ClipRRect(
            child: Image.asset(
              "assets/food3.jpeg",
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}

class PageRoute extends StatelessWidget {
  const PageRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: "Tag",
          child: ClipRRect(
            child: Image.asset("assets/food3.jpeg"),
          ),
        ),
      ),
    );
  }
}
