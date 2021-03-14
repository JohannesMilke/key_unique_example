import 'package:flutter/material.dart';
import 'package:key_unique_example/main.dart';
import 'package:key_unique_example/widget/color_state_widget.dart';

class NoUniqueKeyPage extends StatefulWidget {
  @override
  _NoUniqueKeyPageState createState() => _NoUniqueKeyPageState();
}

class _NoUniqueKeyPageState extends State<NoUniqueKeyPage> {
  late List<Widget> children;

  @override
  void initState() {
    super.initState();

    children = [
      ColorStateWidget(text: '2'),
      ColorStateWidget(text: '1'),
    ];
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.swap_horiz, size: 32),
          onPressed: swapTiles,
        ),
      );

  void swapTiles() => setState(() {
        final child = children.removeAt(0);
        children.insert(1, child);
      });
}
