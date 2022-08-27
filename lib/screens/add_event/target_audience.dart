import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/screens/add_event/post_failed.dart';
import 'package:whatado/screens/add_event/post_loading.dart';
import 'package:whatado/screens/add_event/post_succeeded.dart';
import 'package:whatado/state/add_event_state.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/events/target_group.dart';
import 'package:whatado/widgets/events/target_private.dart';
import 'package:whatado/widgets/events/target_public.dart';
import 'package:whatado/widgets/general/generic_page.dart';

class TargetAudience extends StatefulWidget {
  @override
  _TargetAudienceState createState() => _TargetAudienceState();
}

class _TargetAudienceState extends State<TargetAudience> {
  final headingStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final headingSpacing = 15.0;
  final padding = 30.0;
  final sectionSpacing = 20.0;
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

  final privacies = [
    {'privacy': Privacy.public, 'text': 'Public'},
    {'privacy': Privacy.group, 'text': 'Groups'},
    {'privacy': Privacy.private, 'text': 'Private'},
  ];

  @override
  Widget build(BuildContext context) {
    final eventState = Provider.of<AddEventState>(context);
    final userState = Provider.of<UserState>(context);
    final homeState = Provider.of<HomeState>(context);
    if (eventState.postLoading)
      return PostLoading();
    else if (eventState.failed)
      return PostFailed();
    else if (eventState.succeeded) return PostSucceeded();

    return GenericPage(
        resizeToAvoidBottomInset: true,
        appBar: SavingAppBar(
          onSave: () async => await eventState.postEvent(userState.user!.id,
              MediaQuery.of(context).size.width, homeState.getMyEvents, homeState.getMyForums),
          title: 'Add Event',
          buttonTitle: 'Publish',
        ),
        // AddEventDetailsAppBar(),
        body: eventState.privacy == Privacy.public
            ? SingleChildScrollView(child: _buildBody(eventState))
            : eventState.privacy == Privacy.group
                ? _buildBody(eventState)
                : _buildBody(eventState));
  }

  _buildBody(AddEventState eventState) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 25),
        Text('Privacy', style: headingStyle),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List<Widget>.generate(
              5,
              (i) => i.isOdd
                  ? SizedBox(width: 15)
                  : Expanded(
                      child: RoundedArrowButton(
                          color: eventState.privacy == (privacies[i ~/ 2]['privacy'] as Privacy)
                              ? AppColors.primary
                              : AppColors.disabled,
                          onPressed: () =>
                              eventState.privacy = privacies[i ~/ 2]['privacy'] as Privacy,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(privacies[i ~/ 2]['text'] as String,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: eventState.privacy ==
                                            (privacies[i ~/ 2]['privacy'] as Privacy)
                                        ? Colors.white
                                        : Colors.black)),
                          )),
                    )),
        ),
        if (eventState.privacy == Privacy.private) Expanded(child: TargetPrivate()),
        if (eventState.privacy == Privacy.group) Expanded(child: TargetGroup()),
        if (eventState.privacy != Privacy.private && eventState.privacy != Privacy.group)
          IntrinsicHeight(child: TargetPublic(textController: textController)),
      ]),
    );
  }
}
