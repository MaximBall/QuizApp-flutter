import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final data = [
    Question(
      title: 'Кем хочешь стать?', 
      answers: [
      {'answer': 'Ведущиим Орла и Решки'},
      {'answer': 'Ведущиим Орла и РешкиCorrect', 'isCorrect': 1},
    ]),
    Question(
      title: 'Вопрос 1?', 
      answers: [
      {'answer': 'Ведущиим Орла и РешкиCor', 'isCorrect': 1},
      {'answer': 'Ведущиим Орла и Решки'},
    ]),
    Question(
      title: 'Вопрос2', 
      answers: [
      {'answer': 'Ведущиим Орла и РешкиCor', 'isCorrect': 1},
      {'answer': 'Ведущиим Орла и Решки'},
    ]),
  ];

  List<Question> get questions => [...data];
}
