import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/screens/add_event/post_failed.dart';
import 'package:whatado/screens/add_event/post_loading.dart';
import 'package:whatado/screens/add_event/post_succeeded.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/add_event_details_app_bar.dart';
import 'package:whatado/widgets/events/invite_friends.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';
import 'package:whatado/widgets/interests/input_interest_wrap.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';
import 'package:whatado/widgets/interests/interest_wrap.dart';

class TargetAudience extends StatefulWidget {
  @override
  _TargetAudienceState createState() => _TargetAudienceState();
}

class _TargetAudienceState extends State<TargetAudience> {
  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final sectionSpacing = 35.0;
  late TextEditingController textController;
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    textController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  final genders = [
    {'gender': Gender.both, 'text': 'BOTH'},
    {'gender': Gender.female, 'text': 'FEMALE'},
    {'gender': Gender.male, 'text': 'MALE'},
  ];

  final privacies = [
    {'privacy': Privacy.public, 'text': 'PUBLIC'},
    {'privacy': Privacy.friends, 'text': 'FRIENDS'},
    {'privacy': Privacy.private, 'text': 'PRIVATE'},
  ];

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    if (eventState.postLoading)
      return PostLoading();
    else if (eventState.failed)
      return PostFailed();
    else if (eventState.succeeded) return PostSucceeded();

    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        child: Scaffold(
            appBar: AddEventDetailsAppBar(),
            body: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: sectionSpacing),
                  Text('PRIVACY', style: headingStyle),
                  SizedBox(height: headingSpacing),
                  Wrap(
                    runSpacing: 0.0,
                    spacing: 10.0,
                    children: privacies
                        .map((privacy) => InterestBubble(
                            text: privacy['text'] as String,
                            selected: eventState.privacy == privacy['privacy'],
                            onSelected: (notSelected) {
                              eventState.privacy =
                                  privacy['privacy'] as Privacy;
                            }))
                        .toList(),
                  ),
                  if (eventState.privacy == Privacy.private)
                    SizedBox(height: sectionSpacing),
                  if (eventState.privacy == Privacy.private)
                    Row(
                      children: [
                        Text('PRIVATE INVITATIONS', style: headingStyle),
                        SizedBox(width: 10),
                        Tooltip(
                          preferBelow: false,
                          triggerMode: TooltipTriggerMode.tap,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          padding: EdgeInsets.all(8),
                          message:
                              "Send a direct message inviting these people to join your event.",
                          child: Icon(Icons.help_outline, size: 20),
                        ),
                      ],
                    ),
                  if (eventState.privacy == Privacy.private)
                    Container(
                      height: min(
                          400, (userState.user?.friends.length ?? 1) * 50 + 50),
                      child: InviteFriends(
                        setUsers: (List<EventUser> tempList) =>
                            eventState.selectedUsers = tempList,
                        selectedUsers: eventState.selectedUsers,
                        users: userState.user?.friends,
                      ),
                    ),
                  if (eventState.privacy == Privacy.private)
                    SizedBox(height: headingSpacing),
                  if (eventState.privacy == Privacy.private)
                    PictureWaterfall(
                        loading: false, users: eventState.selectedUsers),
                  SizedBox(height: sectionSpacing),
                  if (eventState.privacy != Privacy.private)
                    Text('GENDER', style: headingStyle),
                  if (eventState.privacy != Privacy.private)
                    SizedBox(height: headingSpacing),
                  if (eventState.privacy != Privacy.private)
                    Wrap(
                      runSpacing: 0.0,
                      spacing: 10.0,
                      children: genders
                          .map((gender) => InterestBubble(
                              text: gender['text'] as String,
                              selected:
                                  eventState.selectedGender == gender['gender'],
                              onSelected: (notSelected) {
                                eventState.selectedGender =
                                    gender['gender'] as Gender;
                              }))
                          .toList(),
                    ),
                  if (eventState.privacy != Privacy.private)
                    SizedBox(height: sectionSpacing),
                  if (eventState.privacy != Privacy.private)
                    Text('AGE RANGE', style: headingStyle),
                  if (eventState.privacy != Privacy.private)
                    RangeSlider(
                        labels: RangeLabels(
                            eventState.filterAgeStart.round().toString(),
                            eventState.filterAgeEnd.round().toString()),
                        divisions: 52,
                        min: 18,
                        max: 70,
                        values: RangeValues(
                            eventState.filterAgeStart, eventState.filterAgeEnd),
                        onChanged: (values) {
                          eventState.filterAgeEnd = values.end;
                          eventState.filterAgeStart = values.start;
                        }),
                  if (eventState.privacy != Privacy.private)
                    SizedBox(height: sectionSpacing),
                  if (eventState.privacy != Privacy.private)
                    Row(
                      children: [
                        Text('INTERESTS', style: headingStyle),
                        SizedBox(width: 10),
                        Tooltip(
                          preferBelow: false,
                          triggerMode: TooltipTriggerMode.tap,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          padding: EdgeInsets.all(8),
                          message:
                              "Prioritize your event for people who have one of these interests. Will prioritize for everyone if no interests are selected.",
                          child: Icon(Icons.help_outline, size: 20),
                        ),
                      ],
                    ),
                  if (eventState.privacy != Privacy.private)
                    SizedBox(height: headingSpacing),
                  if (eventState.privacy != Privacy.private)
                    InterestWrap(
                        interests: userState.user?.interests ?? [],
                        selectedInterests: eventState.selectedInterests,
                        onSelected: (bool notSelected, Interest interest) {
                          if (notSelected) {
                            eventState.addInterest(interest);
                          } else {
                            eventState.removeInterest(interest);
                          }
                        }),
                  if (eventState.privacy != Privacy.private)
                    SizedBox(height: 35),
                  if (eventState.privacy != Privacy.private)
                    Text('ADD INTERESTS', style: headingStyle),
                  if (eventState.privacy != Privacy.private)
                    SizedBox(height: 10),
                  if (eventState.privacy != Privacy.private)
                    Row(
                      children: [
                        Expanded(
                          child: TypeAheadFormField(
                            direction: AxisDirection.up,
                            noItemsFoundBuilder: (context) => SizedBox.shrink(),
                            onSuggestionSelected: (Interest interest) {
                              if (eventState.customInterests
                                  .map((val) => val.title)
                                  .contains(interest.title)) return;
                              eventState.addCustomInterest(interest);
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
                                  : Color(0xfff7941d),
                              size: 35),
                          onPressed: textController.text.isEmpty
                              ? null
                              : () {
                                  if (eventState.customInterests
                                      .map((val) => val.title)
                                      .contains(textController.text.trim()))
                                    return;
                                  eventState.addCustomInterest(Interest(
                                      id: 1,
                                      title: textController.text.trim()));
                                  textController.clear();
                                },
                        ),
                      ],
                    ),
                  if (eventState.privacy != Privacy.private)
                    const SizedBox(height: 15),
                  if (eventState.privacy != Privacy.private)
                    InputInterestWrap(
                      customInterests: eventState.customInterests,
                      onDeleted: (Interest interest) =>
                          eventState.removeCustomInterest(interest),
                    ),
                  if (eventState.privacy != Privacy.private)
                    SizedBox(height: sectionSpacing),
                  SizedBox(height: sectionSpacing),
                ],
              ),
            ))),
      ),
    );
  }
}
