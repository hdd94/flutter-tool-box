import 'dart:math';

import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Flutter is Fun!"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: randomColor(),
            width: 500,
            height: 500,
          );
        },
      ),
    );
  }

  randomColor() {
    return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
  }
}
