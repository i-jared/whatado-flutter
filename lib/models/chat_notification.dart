class ChatNotification {
  int id;
  int notifications;
  bool muted;

  ChatNotification({
    required this.id,
    required this.notifications,
    required this.muted,
  });
  factory ChatNotification.fromGqlData(Map data) {
    return ChatNotification(
        id: data['id'],
        notifications: data['notifications'],
        muted: data['muted']);
  }
}
