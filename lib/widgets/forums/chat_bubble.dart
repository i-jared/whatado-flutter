import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/users/user_avatar.dart';

class ChatBubble extends StatefulWidget {
  final Chat chat;
  ChatBubble({required this.chat});
  @override
  State<StatefulWidget> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  late bool showDate;

  final oldDateFormat = DateFormat('E dd MMM - h:mm a');
  final newDateFormat = DateFormat('h:mm a');
  @override
  void initState() {
    super.initState();
    showDate = false;
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isNew = now.month == widget.chat.createdAt.month && now.day == widget.chat.createdAt.day;
    final userState = Provider.of<UserState>(context);
    final isOwner = widget.chat.author.id == userState.user?.id;
    final Widget bubble = InkWell(
        onTap: () => setState(() => showDate = !showDate),
        child: Bubble(
          margin: BubbleEdges.only(left: isOwner ? 50 : 0, right: isOwner ? 0 : 50),
          color: isOwner ? AppColors.darkAccent : Colors.white,
          radius: Radius.circular(AppRadii.button),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(widget.chat.text,
                onTap: () => setState(() => showDate = !showDate),
                style: TextStyle(fontSize: 18, color: isOwner ? Colors.white : Colors.grey[850])),
          ),
          alignment: isOwner ? Alignment.topRight : Alignment.topLeft,
          nip: isOwner ? BubbleNip.rightTop : BubbleNip.leftTop,
          nipRadius: 0,
          nipWidth: 0.001,
          nipHeight: 30,
        ));

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: isOwner
            ? Column(
                children: [
                  if (showDate)
                    Text(isNew
                        ? newDateFormat.format(widget.chat.createdAt)
                        : oldDateFormat.format(widget.chat.createdAt)),
                  if (showDate) SizedBox(height: 8),
                  bubble,
                ],
              )
            : Column(
                children: [
                  if (showDate)
                    Text(isNew
                        ? newDateFormat.format(widget.chat.createdAt)
                        : oldDateFormat.format(widget.chat.createdAt)),
                  if (showDate) SizedBox(height: 8),
                  Row(
                    children: [
                      InkWell(
                          child: UserAvatar(
                              url: widget.chat.author.photoUrls.isEmpty
                                  ? null
                                  : widget.chat.author.photoUrls.first,
                              radius: 16),
                          onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UserProfile(user: widget.chat.author))).then((_) async {
                                await Future.delayed(Duration(milliseconds: 500));
                                // SystemChrome.setSystemUIOverlayStyle(
                                //     SystemUiOverlayStyle(
                                //   statusBarBrightness: Brightness.dark,
                                //   statusBarIconBrightness: Brightness.dark,
                                //   systemNavigationBarColor: AppColors.background,
                                //   statusBarColor: Colors.transparent,
                                // ));
                              })),
                      SizedBox(width: 5),
                      Flexible(child: bubble)
                    ],
                  ),
                ],
              ));
  }
}
