import 'package:contradefensa/domain/entities/question.dart';
import 'package:contradefensa/infrastructure/models/quizapi/question_quizapi.dart';

class QuestionMapper {
  static Question questionToEntity(QuestionQuizapi quizapi) {
    final correctAnswersList = <String>[];
    quizapi.toJson().forEach((key, value) {
      quizapi.correctAnswers.toJson().forEach((key, value) {
        if (value is bool && value == true) correctAnswersList.add(key);
      });
    });

    final incorrectAnswersList = <String>[];
    quizapi.toJson().forEach((key, value) {
      quizapi.correctAnswers.toJson().forEach((key, value) {
        if (value is bool && value == false) incorrectAnswersList.add(key);
      });
    });

    return Question(
      id: quizapi.id,
      question: quizapi.question,
      description: quizapi.description,
      correctAnswers: correctAnswersList,
      incorrectAnswers: incorrectAnswersList,
      explanation: quizapi.explanation ?? '',
      tags: quizapi.tags.map((tag) => tag.toString()).toList(),
      difficulty: quizapi.difficulty.toString(),
    );
  }
}
