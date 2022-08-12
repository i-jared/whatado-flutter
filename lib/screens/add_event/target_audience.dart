import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
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
import 'package:whatado/widgets/events/target_group.dart';
import 'package:whatado/widgets/events/target_private.dart';
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
    {'privacy': Privacy.group, 'text': 'GROUPS'},
    {'privacy': Privacy.private, 'text': 'PRIVATE'},
  ];

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
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
            body: eventState.privacy == Privacy.public
                ? SingleChildScrollView(child: _buildBody(context))
                : eventState.privacy == Privacy.group
                    ? _buildBody(context)
                    : _buildBody(context)),
      ),
    );
  }

  _buildBody(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    return Padding(
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
                      eventState.privacy = privacy['privacy'] as Privacy;
                    }))
                .toList(),
          ),
          if (eventState.privacy == Privacy.private) Expanded(child: TargetPrivate()),
          if (eventState.privacy == Privacy.group) Expanded(child: TargetGroup()),
          SizedBox(height: headingSpacing),
          if (eventState.privacy != Privacy.private &&
              eventState.privacy != Privacy.group) ...[
            Row(
              children: [
                Switch(
                  onChanged: (newVal) => eventState.screened = newVal,
                  value: eventState.screened,
                  activeColor: AppColors.primary,
                ),
                SizedBox(width: 20),
                Text('Screen Event Members'),
              ],
            ),
            SizedBox(height: sectionSpacing),
            Text('GENDER', style: headingStyle),
            SizedBox(height: headingSpacing),
            Wrap(
              runSpacing: 0.0,
              spacing: 10.0,
              children: genders
                  .map((gender) => InterestBubble(
                      text: gender['text'] as String,
                      selected: eventState.selectedGender == gender['gender'],
                      onSelected: (notSelected) {
                        eventState.selectedGender = gender['gender'] as Gender;
                      }))
                  .toList(),
            ),
            SizedBox(height: sectionSpacing),
            Text('AGE RANGE', style: headingStyle),
            RangeSlider(
                labels: RangeLabels(eventState.filterAgeStart.round().toString(),
                    eventState.filterAgeEnd.round().toString()),
                divisions: 52,
                min: 18,
                max: 70,
                values: RangeValues(eventState.filterAgeStart, eventState.filterAgeEnd),
                onChanged: (values) {
                  eventState.filterAgeEnd = values.end;
                  eventState.filterAgeStart = values.start;
                }),
            SizedBox(height: sectionSpacing),
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
            SizedBox(height: headingSpacing),
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
            SizedBox(height: 35),
            Text('ADD INTERESTS', style: headingStyle),
            SizedBox(height: 10),
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
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
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
                          : AppColors.primary,
                      size: 35),
                  onPressed: textController.text.isEmpty
                      ? null
                      : () {
                          if (eventState.customInterests
                              .map((val) => val.title)
                              .contains(textController.text.trim())) return;
                          eventState.addCustomInterest(
                              Interest(id: 1, title: textController.text.trim()));
                          textController.clear();
                        },
                ),
              ],
            ),
            const SizedBox(height: 15),
            InputInterestWrap(
              customInterests: eventState.customInterests,
              onDeleted: (Interest interest) => eventState.removeCustomInterest(interest),
            ),
            SizedBox(height: sectionSpacing),
          ],
          SizedBox(height: sectionSpacing),
        ],
      ),
    );
  }
}
