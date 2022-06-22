import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:quiz_app/data/quiz_brain.dart';
import 'package:quiz_app/freezed_models/choice/choice.dart';
import 'package:quiz_app/pages/quiz_page/quiz_page_widgets/question_choice.dart';
import 'package:quiz_app/pages/quiz_page/quiz_page_widgets/question_text.dart';
import 'package:quiz_app/pages/quiz_page/quiz_page_widgets/quiz_app_text.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    final questionProvider = Provider.of<QuizBrain>(context);
    List<Choice> choices = questionProvider.currentQuestion().choices;

    void showScore() {
      if (questionProvider.questionNumber == questionProvider.questionBank.length - 1) {
        Alert(
          buttons: [
            DialogButton(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
          context: context,
          type: AlertType.success,
          title: 'Congratulations!!',
          desc: 'You finished the quiz. Your score is ${questionProvider.score} point\\s',
          style: const AlertStyle(
            backgroundColor: Colors.white,
          ),
        ).show();
      }
    }

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.45,
          child: Stack(
            children: [
              const QuizAppText(),
              QuestionText(questionText: questionProvider.currentQuestion().questionText),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.08),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: orientation == Orientation.portrait ? size.width : size.width * 0.5,
              mainAxisExtent: orientation == Orientation.portrait ? size.height * 0.06 : size.height * 0.12,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 3 / 2,
            ),
            itemCount: choices.length,
            itemBuilder: (context, index) => QuestionChoice(
              text: choices[index].choiceText,
              onPressed: () {
                questionProvider.checkAnswer(choices[index].choiceText);
                showScore();
                questionProvider.nextQuestion();
              },
              index: index,
            ),
          ),
        ),
      ],
    );
  }
}
