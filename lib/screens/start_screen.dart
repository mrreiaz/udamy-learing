import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  void moveToQuizScreen() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.pink,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.9,
              child: const Image(
                image: AssetImage('assets/images/img.png'),
              ),
            ),
            // const Image(
            //   image: AssetImage('assets/images/img.png'),
            //   color: Colors.green,
            // ),
            const SizedBox(height: 30),
            const Text('Learn Flutter in Funny Way!'),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: moveToQuizScreen,
              icon: const Icon(Icons.arrow_right),
              label: const Text('Start Quiz'),
            ),
            // OutlinedButton(
            //   style: OutlinedButton.styleFrom(
            //     // shape: const StadiumBorder(),
            //     side: const BorderSide(width: 2, color: Colors.black),
            //     foregroundColor: Colors.black,
            //   ),
            //   onPressed: () {},
            //   child: const Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Text(
            //         'Start Quiz',
            //         style: TextStyle(color: Colors.cyan, fontSize: 22),
            //       ),
            //       Icon(
            //         Icons.arrow_right,
            //         size: 40,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
