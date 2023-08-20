class Question {
  const Question(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> get shuffleAnswers {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
