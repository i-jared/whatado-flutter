import 'package:bot_toast/bot_toast.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/providers/graphql/chat_provider.dart';
import 'package:whatado/screens/home/user_list_page.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';
import 'package:whatado/widgets/users/user_avatar.dart';

class SurveyBubble extends StatefulWidget {
  final Chat chat;
  SurveyBubble({required this.chat});
  @override
  State<StatefulWidget> createState() => _SurveyBubbleState();
}

class _SurveyBubbleState extends State<SurveyBubble> {
  late bool loading = false;

  @override
  Widget build(BuildContext context) {
    final survey = widget.chat.survey!;
    final answers = survey.answers..sort((a, b) => a.id.compareTo(b.id));
    final userState = Provider.of<UserState>(context);
    final isOwner = widget.chat.author.id == userState.user?.id;
    final chatState = Provider.of<ChatState>(context);
    final textColor = isOwner ? AppColors.background : Colors.grey[850];
    final bubbleColor = isOwner ? Color.fromARGB(255, 81, 81, 92) : Colors.white;

    final Widget bubble = Bubble(
      color: bubbleColor,
      margin: BubbleEdges.only(left: isOwner ? 50 : 0, right: isOwner ? 0 : 50),
      radius: Radius.circular(AppRadii.button),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(survey.question, style: TextStyle(fontSize: 18, color: textColor)),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: answers.map((a) {
                final _selected = a.votes.map((e) => e.id).contains(userState.user?.id);

                return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Flexible(
                    child: InkWell(
                      onTap: loading || _selected
                          ? () => null
                          : () async {
                              setState(() => loading = true);
                              final provider = ChatGqlProvider();
                              final result =
                                  await provider.vote(widget.chat.id, a.id, chatState.forum.id);
                              if (!result.ok) {
                                BotToast.showText(
                                    text:
                                        'Error voting. Please exit, wait a minute, and try again.');
                              }
                              setState(() => loading = false);
                            },
                      child: Container(
                        constraints: BoxConstraints(minWidth: 75),
                        margin: EdgeInsets.symmetric(vertical: 4),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        child: Text(a.text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: _selected ? AppColors.background : Colors.grey[850],
                            )),
                        decoration: BoxDecoration(
                            color: _selected ? AppColors.primary : AppColors.background,
                            borderRadius: BorderRadius.circular(AppRadii.button)),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  a.votes.length > 0
                      ? IntrinsicWidth(
                          child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      UserListPage(title: a.text, users: a.votes))),
                          child: PictureWaterfall(loading: false, users: a.votes),
                        ))
                      : Text('--', style: TextStyle(color: textColor))
                ]);
              }).toList(),
            )
          ],
        ),
      ),
      alignment: Alignment.topCenter,
      nip: isOwner ? BubbleNip.rightTop : BubbleNip.leftTop,
      nipRadius: 0,
      nipWidth: 0.001,
      nipHeight: 30,
    );

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: isOwner
            ? bubble
            : Row(
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
                                      builder: (context) => UserProfile(user: widget.chat.author)))
                              .then((_) async {
                            await Future.delayed(Duration(milliseconds: 500));
                            // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                            //   statusBarBrightness: Brightness.dark,
                            //   statusBarIconBrightness: Brightness.dark,
                            //   systemNavigationBarColor: AppColors.background,
                            //   statusBarColor: Colors.transparent,
                            // ));
                          })),
                  SizedBox(width: 5),
                  Flexible(child: bubble)
                ],
              ));
  }
}
