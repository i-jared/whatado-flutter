import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';

class MyProfile extends StatelessWidget {
  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final imageSpacing = 10.0;
  final sectionSpacing = 30.0;

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final imageWidth =
        (MediaQuery.of(context).size.width - (padding + imageSpacing) * 2) /
            3.0;
    // userState.user!.interests.forEach((val) => print('jcl ${val.title}'));
    // print('\n\n\n');
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: headingSpacing),
          Center(
              child: CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(userState.user!.imageUrl),
          )),
          SizedBox(height: sectionSpacing),
          Text('BIO', style: headingStyle),
          SizedBox(height: headingSpacing),
          Text(userState.user!.bio, style: TextStyle(fontSize: 18)),
          SizedBox(height: sectionSpacing),
          Text('PHOTOS', style: headingStyle),
          SizedBox(height: headingSpacing),
          Wrap(
              spacing: imageSpacing,
              runSpacing: 10.0,
              children: userState.user!.photoUrls
                  .map((url) => Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      width: imageWidth,
                      height: imageWidth,
                      child: Image.network(url, fit: BoxFit.cover)))
                  .toList()),
          SizedBox(height: sectionSpacing),
          Row(
            children: [
              Text('INTERESTS', style: headingStyle),
              SizedBox(width: 10),
              Text('(ONLY VISIBLE TO YOU)',
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
            ],
          ),
          SizedBox(height: headingSpacing),
          Wrap(
            spacing: 10.0,
            runSpacing: 0.0,
            children: userState.user!.interests
                .map((interest) => InterestBubble(
                      selected: true,
                      text: interest.title,
                      onSelected: (_) => true,
                    ))
                .toList(),
          ),
          SizedBox(height: 50),
        ],
      ),
    ));
  }
}
