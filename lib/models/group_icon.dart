class GroupIcon {
  int id;
  String url;

  GroupIcon({
    required this.id,
    required this.url,
  });

  factory GroupIcon.fromGqlData(Map<String, dynamic> data) {
    return GroupIcon(
      id: data['id'],
      url: data['url'],
    );
  }

  @override
  String toString() {
    return '$id: $url';
  }
}
