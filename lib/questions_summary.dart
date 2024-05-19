import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 15, // Adjust the radius as needed
                      backgroundColor: Colors.blue, // Customize the color as needed
                    ),
                    Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(color: Colors.white), // Customize the text style as needed
                    ),
                  ],
                ),
                const SizedBox(width: 20), // Add some space between the circle and the column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                          color: Colors.white
                        ),
                      ),
                      Text(
                          data['correct_answer'] as String,
                        style: const TextStyle(
                          color: Colors.green
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
