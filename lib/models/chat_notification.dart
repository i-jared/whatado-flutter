class ChatNotification {
  int id;
  DateTime lastAccessed;
  bool muted;

  ChatNotification({
    required this.id,
    required this.lastAccessed,
    required this.muted,
  });
  factory ChatNotification.fromGqlData(Map data) {
    return ChatNotification(
        id: data['id'],
        lastAccessed: DateTime.parse(data['lastAccessed']),
        muted: data['muted']);
  }
}
