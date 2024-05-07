class Quiz {
  final int id;
  final String title;
  final String description;
  final List<String> questions;
  final Set<String> categories;

  Quiz({
    required this.id,
    required this.title,
    required this.description,
    required this.questions,
    required this.categories,
  });
}
