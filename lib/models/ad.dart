class Ad {
  int id;
  String? imageUrl;
  String description;
  String title;
  bool seen;

  Ad({
    required this.id,
    required this.title,
    required this.description,
    this.imageUrl,
  }) : seen = false;
}
