import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function()? startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // image
          const Image(
            image: AssetImage('assets/images/img.png'),
            color: Color.fromARGB(255, 247, 247, 247),
          ),
          //make some Space
          const SizedBox(
            height: 30.0,
          ),
          // text
          const Text(
            'Learn FLutter in Funny way',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),

          const SizedBox(
            height: 30.0,
          ),
          //Icon(Icons.add),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              side: const BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          )
          // btn
        ],
      ),
    );
  }
}
