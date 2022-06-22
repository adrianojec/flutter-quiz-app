import 'package:flutter/material.dart';
import 'package:quiz_app/freezed_models/choice/choice.dart';
import 'package:quiz_app/freezed_models/question/question.dart';

class QuizBrain extends ChangeNotifier {
  int _questionNumber = 0;
  int _score = 0;

  int get score => _score;
  int get questionNumber => _questionNumber;

  final List<Question> questionBank = [
    Question(
      questionText: 'Which country held the 2016 Summer Olympics?',
      questionAnswer: 'Brazil',
      choices: [
        Choice(choiceText: 'China'),
        Choice(choiceText: 'Ireland'),
        Choice(choiceText: 'Brazil'),
        Choice(choiceText: 'Italy'),
      ],
    ),
    Question(
      questionText: 'Which famous singer released a song called "Adore You"?',
      questionAnswer: 'Harry Styles',
      choices: [
        Choice(choiceText: 'Harry Styles'),
        Choice(choiceText: 'Dua Lipa'),
        Choice(choiceText: 'Halsey'),
        Choice(choiceText: 'Shawn Mendez'),
      ],
    ),
    Question(
      questionText: 'What is the color of Donald Duck\'s Bowtie?',
      questionAnswer: 'Red',
      choices: [
        Choice(choiceText: 'Red'),
        Choice(choiceText: 'Yellow'),
        Choice(choiceText: 'Blue'),
        Choice(choiceText: 'White'),
      ],
    ),
    Question(
      questionText: 'Which animal does not appear in the Chinese zodiac?',
      questionAnswer: 'Hummingbird',
      choices: [
        Choice(choiceText: 'Dragon'),
        Choice(choiceText: 'Rabbit'),
        Choice(choiceText: 'Dog'),
        Choice(choiceText: 'Hummingbird'),
      ],
    ),
    Question(
      questionText: 'Which planet is the hottest?',
      questionAnswer: 'Venus',
      choices: [
        Choice(choiceText: 'Venus'),
        Choice(choiceText: 'Saturn'),
        Choice(choiceText: 'Mercury'),
        Choice(choiceText: 'Mars'),
      ],
    ),
  ];

  void nextQuestion() {
    _questionNumber != questionBank.length - 1 ? _questionNumber += 1 : resetQuestions();
    notifyListeners();
  }

  Question currentQuestion() => questionBank[_questionNumber];

  void checkAnswer(String userAnswer) {
    if (userAnswer == questionBank[_questionNumber].questionAnswer) _score += 1;
  }

  void resetQuestions() {
    _questionNumber = 0;
    _score = 0;
  }
}
