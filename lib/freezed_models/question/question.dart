import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:quiz_app/freezed_models/choice/choice.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  factory Question({
    required String questionText,
    required String questionAnswer,
    required List<Choice> choices,
}) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}
