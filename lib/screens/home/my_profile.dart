import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';

class MyProfile extends StatelessWidget {
  ///                                ////
  ///             FAKE DATA          ////
  ///                                ////
  final User jared = User(
      id: 1,
      email: 'jaredclambert@gmail.com',
      imageUrl:
          'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
      name: 'Jared Lambert',
      interests: ['Cooking', 'Games', 'Health', 'Traveling', 'Photography']
          .map((name) => Interest(name: name))
          .toList());

  ///                                ////
  ///             FAKE DATA          ////
  ///                                ////
  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final padding = 30.0;
  final imageSpacing = 10.0;
  final headingSpacing = 10.0;
  final sectionSpacing = 30.0;
  @override
  Widget build(BuildContext context) {
    final imageWidth =
        (MediaQuery.of(context).size.width - (padding + imageSpacing) * 2) /
            3.0;
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
            backgroundImage: NetworkImage(jared.imageUrl),
          )),
          SizedBox(height: sectionSpacing),
          Text('BIO', style: headingStyle),
          SizedBox(height: headingSpacing),
          Text(lorem(words: 20, paragraphs: 1), style: TextStyle(fontSize: 18)),
          SizedBox(height: sectionSpacing),
          Text('PHOTOS', style: headingStyle),
          SizedBox(height: headingSpacing),
          Wrap(
            spacing: imageSpacing,
            runSpacing: 10.0,
            children: List<Widget>.generate(
                6,
                (index) => Container(
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    width: imageWidth,
                    height: imageWidth,
                    child: Image.network(jared.imageUrl, fit: BoxFit.cover))),
          ),
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
            children: jared.interests
                .map((interest) => InterestBubble(
                      selected: true,
                      interest: interest,
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
