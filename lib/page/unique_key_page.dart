import 'package:flutter/material.dart';
import 'package:key_unique_example/main.dart';
import 'package:key_unique_example/widget/color_state_widget.dart';

class UniqueKeyPage extends StatefulWidget {
  @override
  _UniqueKeyPageState createState() => _UniqueKeyPageState();
}

class _UniqueKeyPageState extends State<UniqueKeyPage> {
  late List<Widget> children;

  @override
  void initState() {
    super.initState();

    children = [
      ColorStateWidget(key: UniqueKey(), text: '1'),
      ColorStateWidget(key: UniqueKey(), text: '2'),
      // Container(key: UniqueKey(), child: ColorStateWidget(text: '1')),
      // Container(key: UniqueKey(), child: ColorStateWidget(text: '2')),
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
