import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/chat.dart';
import 'package:whatado/screens/profile/user_profile.dart';
import 'package:whatado/state/user_state.dart';

class SurveyBubble extends StatelessWidget {
  final Chat chat;
  SurveyBubble({required this.chat});

  @override
  Widget build(BuildContext context) {
    final survey = chat.survey!;
    final userState = Provider.of<UserState>(context);
    final isOwner = chat.author.id == userState.user?.id;

    final Widget bubble = Bubble(
      margin: BubbleEdges.only(left: isOwner ? 50 : 0, right: isOwner ? 0 : 50),
      color: !isOwner ? Colors.purple[100] : Colors.white,
      radius: Radius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(survey.question,
            style: TextStyle(
                fontSize: 18,
                color: isOwner ? Colors.white : Colors.grey[850])),
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
                            NetworkImage(chat.author.photoUrls.first),
                      ),
                      onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UserProfile(user: chat.author)))
                              .then((_) async {
                            await Future.delayed(Duration(milliseconds: 500));
                            SystemChrome.setSystemUIOverlayStyle(
                                SystemUiOverlayStyle.dark.copyWith(
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
