class Question extends Choices {
  final String questionText;
  final String questionAnswer;

  Question({
    required this.questionText,
    required this.questionAnswer,
    required String choiceA,
    required String choiceB,
    required String choiceC,
    required String choiceD,
  }) : super(
            choiceA: choiceA,
            choiceB: choiceB,
            choiceC: choiceC,
            choiceD: choiceD);
}

class Choices {
  final String choiceA;
  final String choiceB;
  final String choiceC;
  final String choiceD;

  Choices({
    required this.choiceA,
    required this.choiceB,
    required this.choiceC,
    required this.choiceD,
  });
}
