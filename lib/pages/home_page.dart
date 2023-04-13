import 'dart:math';

import 'package:flutter/material.dart';

///Home screen with color changing
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int transitionDurationMs = 1000;
  String pageName = "Solid Test App";

  int rgbLimit = 255;
  int r = 255;
  int g = 255;
  int b = 255;

  void changeColor() {
    setState(() {
      r = Random().nextInt(rgbLimit);
      g = Random().nextInt(rgbLimit);
      b = Random().nextInt(rgbLimit);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: GestureDetector(
          onTap: () => changeColor(),
          child: AnimatedContainer(
            color: Color.fromRGBO(r, g, b, 1),
            alignment: Alignment.center,
            duration: Duration(milliseconds: transitionDurationMs),
            child: Text(
              "Hello there",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
