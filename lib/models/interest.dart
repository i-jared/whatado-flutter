class Interest {
  int id;
  String title;
  bool popular;
  Interest({required this.id, required this.title, this.popular = false});

  factory Interest.fromGqlData(Map data) {
    return Interest(id: data['id'], title: data['title']);
  }
}
