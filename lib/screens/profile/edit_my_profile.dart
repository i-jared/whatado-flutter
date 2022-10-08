import 'dart:io';
import 'dart:typed_data';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/entry/image_box.dart';
import 'package:whatado/widgets/entry/select_image_box.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/general/dark_divider.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/input/labeled_outline_text_field.dart';
import 'package:whatado/widgets/interests/combined_interest_search.dart';

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
  late List<Interest> customInterests;
  late List<Interest> allInterests;
  late bool loading = true;

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
    customInterests = [];
    init();
  }

  void init() async {
    final provider = InterestGqlProvider();
    final result = await provider.popular();
    allInterests = [...interests, ...(result.data ?? [])];
    setState(() {
      loading = false;
    });
  }

  @override
  void dispose() {
    bioController.dispose();
    super.dispose();
  }

  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final padding = 20.0;
  final imageSpacing = 5.0;
  final headingSpacing = 10.0;
  final sectionSpacing = 30.0;
  @override
  Widget build(BuildContext context) {
    final imageWidth =
        (MediaQuery.of(context).size.width - (padding + imageSpacing) * 2 - 30) / 3.0;
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
                        temp?.add(cloudStorageService.resize(file: File(image.path)));
                        //update
                        userState.photos = temp;
                      }
                    }))
          ];
    return GenericPage(
      appBar: SavingAppBar(
          title: 'Edit Profile',
          onSave: () async {
            userState.loading = true;
            final success =
                await userState.save([...customInterests, ...interests], bioController.text);
            if (success) {
              BotToast.showText(text: 'Successfully edited user');
            } else {
              BotToast.showText(text: 'Error editing user');
            }
            userState.loading = false;
            Navigator.pop(context);
          },
          disabled: userState.loading ||
              (bioController.text == widget.user!.bio &&
                      listsEqual<Interest>(
                          [...customInterests, ...interests], widget.user!.interests) &&
                      listsEqual<Uint8List>(userState.photos, userState.ogphotos) ||
                  (userState.photos!.isEmpty || bioController.text.isEmpty || interests.isEmpty))),
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
                      LabeledOutlineTextField(
                          label: 'Bio', controller: bioController, maxLines: null),
                      SizedBox(height: sectionSpacing),
                      ShadowBox(
                        child: Container(
                          width: double.infinity,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text('Photos').subtitle().semibold(),
                            DarkDivider(),
                            Wrap(
                              spacing: imageSpacing,
                              runSpacing: 10.0,
                              children: theList,
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(height: sectionSpacing),
                      ShadowBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Interests').semibold().subtitle(),
                                SizedBox(width: 10),
                                // Remove this replace with hint
                                Tooltip(
                                  showDuration: Duration(seconds: 3),
                                  preferBelow: false,
                                  triggerMode: TooltipTriggerMode.tap,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  padding: EdgeInsets.all(8),
                                  message: "Your interests are not publicly visible.",
                                  child:
                                      Icon(Icons.help_outline, size: 15, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            DarkDivider(),
                            loading
                                ? Center(child: CircularProgressIndicator())
                                : CombinedInterestSearch(
                                    textController: textController,
                                    interests: allInterests,
                                    customInterests: customInterests,
                                    selectedInterests: interests,
                                    addCustomInterest: (Interest i) {
                                      customInterests.add(i);
                                      setState(() => customInterests = customInterests);
                                    },
                                    addInterest: (Interest i) {
                                      interests.add(i);
                                      setState(() => interests = interests);
                                    },
                                    removeCustomInterest: (Interest i) {
                                      customInterests.remove(i);
                                      setState(() => customInterests = customInterests);
                                    },
                                    removeInterest: (Interest i) {
                                      interests.remove(i);
                                      setState(() => interests = interests);
                                    },
                                    tooltipMessage: 'What kind of events do you want to see?',
                                  ),
                          ],
                        ),
                      ),
                      // Wrap(
                      //   spacing: 10.0,
                      //   runSpacing: 0.0,
                      //   children: interests
                      //       .map((interest) => InputInterestBubble(
                      //             interest: interest,
                      //             onDeleted: () => setState(() {
                      //               interests.remove(interest);
                      //               setState(() => interests = interests);
                      //             }),
                      //           ))
                      //       .toList(),
                      // ),
                      SizedBox(height: sectionSpacing),
                    ],
                  ),
                )),
    );
  }
}
