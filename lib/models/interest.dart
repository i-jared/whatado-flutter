class Interest {
  int id;
  String title;
  bool popular;
  Interest({required this.id, required this.title, this.popular = false});

  factory Interest.fromGqlData(Map data) {
    return Interest(id: data['id'], title: data['title']);
  }
  @override
  bool operator ==(other) {
    if (!(other is Interest)) return false;
    return other.title.toLowerCase().trim() == title.toLowerCase().trim();
  }

  @override
  int get hashCode => super.hashCode + title.hashCode;
  @override
  String toString() => title;
}
