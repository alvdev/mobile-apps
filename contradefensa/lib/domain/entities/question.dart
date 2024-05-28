class Question {
  final int id;
  final String question;
  final String description;
  final List<String> correctAnswers;
  final List<String> incorrectAnswers;
  final String explanation;
  final List<String> tags;
  final String difficulty;

  Question({
    required this.id,
    required this.question,
    required this.description,
    required this.correctAnswers,
    required this.incorrectAnswers,
    required this.explanation,
    required this.tags,
    required this.difficulty,
  });
}
