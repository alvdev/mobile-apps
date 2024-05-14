import 'package:contradefensa/domain/entities/question.dart';
import 'package:contradefensa/infrastructure/models/quizapi/question_quizapi.dart';

class QuestionMapper {
  static Question questionToEntity(QuestionQuizapi quizapi) {
    final correctAnswersSet = <String>{};
    quizapi.toJson().forEach((key, value) {
      quizapi.correctAnswers.toJson().forEach((key, value) {
        if (value is bool && value == true) correctAnswersSet.add(key);
      });
    });

    final incorrectAnswersSet = <String>{};
    quizapi.toJson().forEach((key, value) {
      quizapi.correctAnswers.toJson().forEach((key, value) {
        if (value is bool && value == false) incorrectAnswersSet.add(key);
      });
    });

    return Question(
      id: quizapi.id,
      question: quizapi.question,
      description: quizapi.description,
      correctAnswers: correctAnswersSet,
      incorrectAnswers: incorrectAnswersSet,
      explanation: quizapi.explanation ?? '',
      tags: quizapi.tags.map((tag) => tag.toString()).toSet(),
      difficulty: quizapi.difficulty.toString(),
    );
  }
}
