class EventUser {
  int id;
  String name;
  String photoUrls;
  EventUser({
    required this.id,
    required this.name,
    required this.photoUrls,
  });

  factory EventUser.fromGqlData(Map data) {
    return EventUser(
      id: data['id'],
      photoUrls: data['photoUrls'] ?? '',
      name: data['username'] ?? '',
    );
  }
}
