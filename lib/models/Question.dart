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
      title: 'Какой остров самый большой в мире?', 
      answers: [
      {'answer': 'Мадагаскар'},
      {'answer': 'Гренландия', 'isCorrect': 1},
    ]),
    Question(
      title: 'Белые медведи охотятся на пингвинов?', 
      answers: [
      {'answer': 'Да'},
      {'answer': 'Нет', 'isCorrect': 1},
    ]),
    Question(
      title: 'Что из этого изобрели раньше?', 
      answers: [
      {'answer': 'Часы', 'isCorrect': 1},
      {'answer': 'Противогаз'},
    ]),
  ];

  List<Question> get questions => [...data];
}
