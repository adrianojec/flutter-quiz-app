import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
      questionText: 'Which country held the 2016 Summer Olympics?',
      questionAnswer: 'Brazil',
      choiceA: 'China',
      choiceB: 'Ireland',
      choiceC: 'Brazil',
      choiceD: 'Italy',
    ),
    Question(
      questionText: 'Which famous singer released a song called "Adore You"?',
      questionAnswer: 'Harry Styles',
      choiceA: 'Harry Styles',
      choiceB: 'Dua Lipa',
      choiceC: 'Halsey',
      choiceD: 'Shawn Mendez',
    ),
    Question(
      questionText: 'What is the color of Donald Duck\'s Bowtie?',
      questionAnswer: 'Red',
      choiceA: 'Red',
      choiceB: 'Yellow',
      choiceC: 'Blue',
      choiceD: 'White',
    ),
    Question(
      questionText: 'Which animal does not appear in the Chinese zodiac?',
      questionAnswer: 'Hummingbird',
      choiceA: 'Dragon',
      choiceB: 'Rabbit',
      choiceC: 'Dog',
      choiceD: 'Hummingbird',
    ),
    Question(
      questionText: 'Which planet is the hottest?',
      questionAnswer: 'Venus',
      choiceA: 'Venus',
      choiceB: 'Saturn',
      choiceC: 'Mercury',
      choiceD: 'Mars',
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber += 1;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  String getChoiceA() {
    return _questionBank[_questionNumber].choiceA;
  }

  String getChoiceB() {
    return _questionBank[_questionNumber].choiceB;
  }

  String getChoiceC() {
    return _questionBank[_questionNumber].choiceC;
  }

  String getChoiceD() {
    return _questionBank[_questionNumber].choiceD;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now return true');
      return true;
    }
    return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
