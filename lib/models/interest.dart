class Interest {
  int id;
  String name;
  Interest({required this.id, required this.name});

  factory Interest.fromGqlData(Map data) {
    return Interest(id: data['id'], name: data['name']);
  }
}
