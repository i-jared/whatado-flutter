import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/widgets/home/edit_my_profile_app_bar.dart';
import 'package:whatado/widgets/input/my_text_field.dart';
import 'package:whatado/widgets/interests/input_interest_bubble.dart';

class EditMyProfile extends StatefulWidget {
  final User user;
  EditMyProfile({required this.user});
  @override
  State<StatefulWidget> createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  List<Interest> interests = [];
  List<String> photoUrls = [];
  String bio = '';
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    interests = widget.user.interests;
    photoUrls = widget.user.photoUrls;
    bio = widget.user.bio;
  }

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
    return Scaffold(
      appBar: SavingAppBar(title: 'Edit Profile', onSave: () => null),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: headingSpacing),
            Center(
                child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(widget.user.imageUrl),
            )),
            Center(
                child: TextButton(
                    onPressed: () => null,
                    child: Text('CHANGE PROFILE IMAGE',
                        style: TextStyle(color: Colors.red[300])))),
            SizedBox(height: headingSpacing),
            Text('BIO', style: headingStyle),
            SizedBox(height: headingSpacing),
            TextFormField(
                maxLines: null,
                initialValue: lorem(words: 20, paragraphs: 1),
                style: TextStyle(fontSize: 18)),
            SizedBox(height: sectionSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('PHOTOS', style: headingStyle),
                if (photoUrls.length < 6)
                  TextButton(
                      onPressed: () => null,
                      child: Row(children: [
                        Icon(Icons.add, color: Colors.red[300]),
                        Text('ADD PHOTOS',
                            style: TextStyle(color: Colors.red[300]))
                      ])),
              ],
            ),
            SizedBox(height: headingSpacing),
            Wrap(
              spacing: imageSpacing,
              runSpacing: 10.0,
              children: photoUrls
                  .map((url) => Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      width: imageWidth,
                      height: imageWidth,
                      child: Image.network(url, fit: BoxFit.cover)))
                  .toList(),
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
              children: interests
                  .map((interest) => InputInterestBubble(
                        interest: interest,
                        onDeleted: () => setState(() {
                          interests.remove(interest);
                          setState(() => interests = interests);
                        }),
                      ))
                  .toList(),
            ),
            Row(
              children: [
                Expanded(
                  child: MyTextField(
                    hintText: 'Add your interest here...',
                    controller: textController,
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon:
                      Icon(Icons.add_circle, color: Colors.red[300], size: 50),
                  onPressed: () {
                    interests.add(Interest(name: textController!.text));
                    setState(() => interests = interests);
                    textController!.clear();
                  },
                ),
              ],
            ),
            SizedBox(height: 150),
          ],
        ),
      )),
    );
  }
}
