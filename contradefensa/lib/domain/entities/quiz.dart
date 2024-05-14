class Quiz {
  final int id;
  final String title;
  final String description;
  final Set<String> categories;
  final Set<String> questions;

  Quiz({
    required this.id,
    required this.title,
    required this.description,
    required this.categories,
    required this.questions,
  });
}
