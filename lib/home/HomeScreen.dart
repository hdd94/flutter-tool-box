import 'package:flutter/material.dart';
import 'package:twelve_minute_bootcamp/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Flutter is Fun!'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            buildElevatedButton(context, 'Hero', '/hero'),
            buildElevatedButton(context, 'ListView Builder', '/list'),
          ],
        ),
      ),
    );
  }

  Padding buildElevatedButton(
      BuildContext context, String buttonName, String routeName) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(buttonName),
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
