import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function()? startQuiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(89, 120, 6, 6),
            Color.fromARGB(89, 6, 120, 8),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //img
            Image.asset(
              'assets/images/img.png',
              color: Colors.cyan,
              width: 300,
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            // txt
            const Text(
              'Start Quiz with Fun!!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //btn
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                side: const BorderSide(
                  color: Colors.white,
                  width: 3.0,
                ),
              ),
              onPressed: startQuiz,
              label: const Text(
                'Start Quiz !!!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
