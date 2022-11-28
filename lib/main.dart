import 'dart:math';

import 'package:flutter/material.dart';
import 'package:twelve_minute_bootcamp/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: appRoutes);
  }
}
