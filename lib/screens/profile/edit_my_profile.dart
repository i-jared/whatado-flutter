import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/entry/image_box.dart';
import 'package:whatado/widgets/entry/select_image_box.dart';
import 'package:whatado/widgets/interests/input_interest_bubble.dart';

class EditMyProfile extends StatefulWidget {
  final User? user;
  EditMyProfile({required this.user});
  @override
  State<StatefulWidget> createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  late TextEditingController bioController;
  late TextEditingController textController;
  late List<Interest> interests;

  bool listsEqual<T>(List<T>? one, List<T>? two) {
    bool val = true;
    if (one?.length != two?.length) return false;
    one?.forEach((element) {
      if (!(two?.contains(element) ?? true)) val = false;
    });
    return val;
  }

  @override
  void initState() {
    super.initState();
    bioController = TextEditingController(text: widget.user!.bio);
    bioController.addListener(() => setState(() {}));
    textController = TextEditingController();
    textController.addListener(() => setState(() {}));
    interests = List<Interest>.from(widget.user!.interests);
  }

  @override
  void dispose() {
    bioController.dispose();
    super.dispose();
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
    final userState = Provider.of<UserState>(context);

    final theList = userState.photos == null
        ? [Center(child: CircularProgressIndicator())]
        : [
            ...userState.photos!.map((data) => ImageBox(
                data: data,
                url: null,
                imageWidth: imageWidth,
                onRemove: () {
                  final temp = userState.photos;
                  temp!.removeWhere((val) => val == data);
                  userState.photos = temp;
                })),
            ...List.generate(
                6 - userState.photos!.length,
                (i) => SelectImageBox(
                    imageWidth: imageWidth,
                    onSelect: () async {
                      final image = await cloudStorageService.pickImage();
                      if (image != null) {
                        final temp = userState.photos;
                        temp?.add(cloudStorageService.resize(file: image));
                        //update
                        userState.photos = temp;
                        print(userState.photos?.length);
                      }
                    }))
          ];

    return Scaffold(
      appBar: SavingAppBar(
          title: 'Edit Profile',
          onSave: () async {
            userState.loading = true;
            await userState.save(interests, bioController.text);
            userState.loading = false;
            Navigator.pop(context);
          },
          disabled: userState.loading ||
              (bioController.text == widget.user!.bio &&
                      listsEqual<Interest>(interests, widget.user!.interests) &&
                      listsEqual<Uint8List>(
                          userState.photos, userState.ogphotos) ||
                  (userState.photos!.isEmpty ||
                      bioController.text.isEmpty ||
                      interests.isEmpty))),
      body: widget.user == null
          ? Container()
          : userState.loading
              ? Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: headingSpacing),
                      Text('BIO', style: headingStyle),
                      SizedBox(height: headingSpacing),
                      TextFormField(
                          maxLines: null,
                          controller: bioController,
                          style: TextStyle(fontSize: 18)),
                      SizedBox(height: sectionSpacing),
                      Text('PHOTOS', style: headingStyle),
                      SizedBox(height: headingSpacing),
                      Wrap(
                        spacing: imageSpacing,
                        runSpacing: 10.0,
                        children: theList,
                      ),
                      SizedBox(height: sectionSpacing),
                      Row(
                        children: [
                          Text('INTERESTS', style: headingStyle),
                          SizedBox(width: 10),
                          Text('(ONLY VISIBLE TO YOU)',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
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
                            child: TypeAheadFormField(
                              noItemsFoundBuilder: (context) =>
                                  SizedBox.shrink(),
                              onSuggestionSelected: (Interest interest) {
                                if (interests
                                    .map((val) => val.title)
                                    .contains(interest.title)) return;
                                interests.add(interest);
                                setState(() => interests = interests);
                                textController.clear();
                              },
                              suggestionsCallback: (String pattern) {
                                final provider = InterestGqlProvider();
                                final result = provider.search(pattern);
                                return result;
                              },
                              itemBuilder: (context, Interest interest) =>
                                  ListTile(title: Text(interest.title)),
                              textFieldConfiguration: TextFieldConfiguration(
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Add your interest here...',
                                  hintStyle: TextStyle(fontSize: 13),
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 12),
                                ),
                                controller: textController,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(Icons.add_circle_outline,
                                color: textController.text.isEmpty
                                    ? Colors.grey[400]
                                    : Color(0xffe85c3f),
                                size: 35),
                            onPressed: textController.text.isEmpty
                                ? null
                                : () {
                                    if (interests
                                        .map((val) => val.title)
                                        .contains(textController.text.trim()))
                                      return;
                                    interests.add(Interest(
                                        id: 1,
                                        title: textController.text.trim()));
                                    setState(() => interests = interests);
                                    textController.clear();
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
