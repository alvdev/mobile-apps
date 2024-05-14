// To parse this JSON data, do
//
//     final quizapiResponse = quizapiResponseFromJson(jsonString);

import 'dart:convert';

List<QuizapiResponse> quizapiResponseFromJson(String str) =>
    List<QuizapiResponse>.from(
        json.decode(str).map((x) => QuizapiResponse.fromJson(x)));

String quizapiResponseToJson(List<QuizapiResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuizapiResponse {
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

  QuizapiResponse({
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

  factory QuizapiResponse.fromJson(Map<String, dynamic> json) =>
      QuizapiResponse(
        id: json["id"],
        question: json["question"],
        description: json["description"],
        answers: Answers.fromJson(json["answers"]),
        multipleCorrectAnswers: json["multiple_correct_answers"],
        correctAnswers: CorrectAnswers.fromJson(json["correct_answers"]),
        correctAnswer: correctAnswerValues.map[json["correct_answer"]]!,
        explanation: json["explanation"],
        tip: json["tip"],
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

class Answers {
  final String answerA;
  final String answerB;
  final String? answerC;
  final String? answerD;
  final String? answerE;
  final String? answerF;

  Answers({
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
    required this.answerE,
    required this.answerF,
  });

  factory Answers.fromJson(Map<String, dynamic> json) => Answers(
        answerA: json["answer_a"],
        answerB: json["answer_b"],
        answerC: json["answer_c"],
        answerD: json["answer_d"],
        answerE: json["answer_e"],
        answerF: json["answer_f"],
      );

  Map<String, dynamic> toJson() => {
        "answer_a": answerA,
        "answer_b": answerB,
        "answer_c": answerC,
        "answer_d": answerD,
        "answer_e": answerE,
        "answer_f": answerF,
      };
}

enum CorrectAnswer { answerA, answerC, answerD }

final correctAnswerValues = EnumValues({
  "answer_a": CorrectAnswer.answerA,
  "answer_c": CorrectAnswer.answerC,
  "answer_d": CorrectAnswer.answerD
});

class CorrectAnswers {
  final String answerACorrect;
  final String answerBCorrect;
  final String answerCCorrect;
  final String answerDCorrect;
  final String answerECorrect;
  final String answerFCorrect;

  CorrectAnswers({
    required this.answerACorrect,
    required this.answerBCorrect,
    required this.answerCCorrect,
    required this.answerDCorrect,
    required this.answerECorrect,
    required this.answerFCorrect,
  });

  factory CorrectAnswers.fromJson(Map<String, dynamic> json) => CorrectAnswers(
        answerACorrect: json["answer_a_correct"],
        answerBCorrect: json["answer_b_correct"],
        answerCCorrect: json["answer_c_correct"],
        answerDCorrect: json["answer_d_correct"],
        answerECorrect: json["answer_e_correct"],
        answerFCorrect: json["answer_f_correct"],
      );

  Map<String, dynamic> toJson() => {
        "answer_a_correct": answerACorrect,
        "answer_b_correct": answerBCorrect,
        "answer_c_correct": answerCCorrect,
        "answer_d_correct": answerDCorrect,
        "answer_e_correct": answerECorrect,
        "answer_f_correct": answerFCorrect,
      };
}

enum Difficulty { easy, hard, medium }

final difficultyValues = EnumValues({
  "Easy": Difficulty.easy,
  "Hard": Difficulty.hard,
  "Medium": Difficulty.medium
});

class Tag {
  final String name;

  Tag({
    required this.name,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
