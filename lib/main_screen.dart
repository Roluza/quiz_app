import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'assets/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(147, 236, 230, 230),
            ),
            // Opacity(
            //   opacity: 0.5,
            //   child: Image.asset(
            //     'assets/quiz-logo.png',
            //     width: 300,
            //   ),
            // ),
            const SizedBox(height: 70,),
            Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 26
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz')
            )
          ],
        ),
    );
  }

}


