import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ), // QuestionIdentifier
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ), // Text
              const SizedBox(height: 5), // SizedBox
              Text(
                itemData['user_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 202, 171, 252),
                ),
              ), // Text
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 181, 254, 246),
                ),
              ), // Text
            ],
          ), // Column
        ), // Expanded
      ],
    ); // Row
  }
}
