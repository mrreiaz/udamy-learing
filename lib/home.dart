import 'package:flutter/material.dart';
import 'package:udamy/quiz.dart';
import 'package:udamy/start_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Widget? activeScreen;

  var activeScreen = "start";

  void switchScreen() {
    setState(() {
      // change the screen
      activeScreen = "quiz";
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget =
        activeScreen == "start" ? StartScreen(switchScreen) : Quiz();
    return Scaffold(
      // body: Quiz(),
      body: screenWidget,
      // body: Questions(),
    );
  }
}
