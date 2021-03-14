import 'dart:math';

import 'package:flutter/material.dart';

class ColorStateWidget extends StatefulWidget {
  final String text;

  const ColorStateWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  ColorStateWidgetState createState() => ColorStateWidgetState();
}

class ColorStateWidgetState extends State<ColorStateWidget> {
  late Color color;

  @override
  void initState() {
    super.initState();

    color = generateColor();
  }

  Color generateColor() {
    final random = Random();

    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}
