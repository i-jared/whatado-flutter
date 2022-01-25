import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/providers/graphql/chat_provider.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';

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
    final userState = Provider.of<UserState>(context);
    final isOwner = widget.chat.author.id == userState.user?.id;
    final chatState = Provider.of<ChatState>(context);

    final Widget bubble = Bubble(
      margin: BubbleEdges.only(left: isOwner ? 50 : 5, right: 50),
      color: Colors.orange[50],
      radius: Radius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(survey.question,
                style: TextStyle(fontSize: 18, color: Colors.grey[850])),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: survey.answers.map((a) {
                final _selected =
                    a.votes.map((e) => e.id).contains(userState.user?.id);

                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: InkWell(
                          onTap: loading || _selected
                              ? () => null
                              : () async {
                                  setState(() => loading = true);
                                  final provider = ChatGqlProvider();
                                  await provider.vote(
                                      widget.chat.id, a.id, chatState.forum.id);
                                  setState(() => loading = false);
                                },
                          child: Container(
                            constraints: BoxConstraints(minWidth: 75),
                            margin: EdgeInsets.symmetric(vertical: 4),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                            child: Text(a.text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _selected
                                      ? Colors.grey[50]
                                      : Colors.grey[850],
                                )),
                            decoration: BoxDecoration(
                                color: _selected
                                    ? Colors.grey[850]
                                    : Colors.grey[50],
                                borderRadius: BorderRadius.circular(100)),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      a.votes.length > 0
                          ? PictureWaterfall(loading: false, users: a.votes)
                          : Text('--')
                    ]);
              }).toList(),
            )
          ],
        ),
      ),
      alignment: Alignment.topCenter,
      nip: BubbleNip.no,
    );

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: isOwner
            ? bubble
            : Row(
                children: [
                  InkWell(
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(widget.chat.author.photoUrls.first),
                      ),
                      onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserProfile(
                                          user: widget.chat.author)))
                              .then((_) async {
                            await Future.delayed(Duration(milliseconds: 500));
                            SystemChrome.setSystemUIOverlayStyle(
                                SystemUiOverlayStyle(
                              statusBarBrightness: Brightness.dark,
                              statusBarIconBrightness: Brightness.dark,
                              systemNavigationBarColor: Colors.grey[50],
                              statusBarColor: Colors.transparent,
                            ));
                          })),
                  SizedBox(width: 5),
                  Flexible(child: bubble)
                ],
              ));
  }
}
