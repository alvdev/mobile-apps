import './quizapi_response.dart';

class QuestionQuizapi {
  final int id;
  final String question;
  final dynamic description;
  final Answers answers;
  final String multipleCorrectAnswers;
  final CorrectAnswers correctAnswers;
  final CorrectAnswer? correctAnswer;
  final String? explanation;
  final dynamic tip;
  final List<Tag> tags;
  final String category;
  final Difficulty difficulty;

  QuestionQuizapi({
    required this.id,
    required this.question,
    required this.description,
    required this.answers,
    required this.multipleCorrectAnswers,
    required this.correctAnswers,
    required this.correctAnswer,
    required this.explanation,
    required this.tip,
    required this.tags,
    required this.category,
    required this.difficulty,
  });

  factory QuestionQuizapi.fromJson(Map<String, dynamic> json) =>
      QuestionQuizapi(
        id: json["id"],
        question: json["question"],
        description: json["description"] ?? '',
        answers: Answers.fromJson(json["answers"]),
        multipleCorrectAnswers: json["multiple_correct_answers"],
        correctAnswers: CorrectAnswers.fromJson(json["correct_answers"]),
        correctAnswer: correctAnswerValues.map[json["correct_answer"]],
        explanation: json["explanation"] ?? '',
        tip: json["tip"] ?? '',
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        category: json["category"],
        difficulty: difficultyValues.map[json["difficulty"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "question": question,
        "description": description,
        "answers": answers.toJson(),
        "multiple_correct_answers": multipleCorrectAnswers,
        "correct_answers": correctAnswers.toJson(),
        "correct_answer": correctAnswerValues.reverse[correctAnswer],
        "explanation": explanation,
        "tip": tip,
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "category": category,
        "difficulty": difficultyValues.reverse[difficulty],
      };
}
