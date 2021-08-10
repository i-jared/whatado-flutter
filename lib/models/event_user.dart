class EventUser {
  int id;
  String name;
  String imageUrl;
  EventUser({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory EventUser.fromGqlData(Map data) {
    return EventUser(
      id: data['id'],
      imageUrl: data['profilePhotoUrl'] ?? '',
      name: data['username'] ?? '',
    );
  }
}
