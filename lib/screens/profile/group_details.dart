import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/screens/home/event_details.dart';
import 'package:whatado/screens/profile/edit_group_details.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/events/inner_event_display.dart';
import 'package:whatado/widgets/events/my_event_display.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class GroupDetails extends StatefulWidget {
  final Group group;
  GroupDetails({required this.group});
  @override
  State<StatefulWidget> createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetails> {
  List<Event>? groupEvents;
  late bool loading;
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    setState(() => loading = true);
    final eventProvider = EventsGqlProvider();
    final result = await eventProvider.groupEvents(widget.group.id);
    setState(() => groupEvents = result.data ?? []);
    setState(() => loading = false);
  }

  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final bool isOwner = userState.user?.id == widget.group.owner;
    return Container(
        color: Colors.grey[50],
        child: SafeArea(
            child: Scaffold(
          appBar: SavingAppBar(
            title: widget.group.name,
            buttonTitle: isOwner ? "EDIT" : "LEAVE",
            onSave: () => isOwner
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditGroupDetails(group: widget.group)))
                : null, //TODO add function for user to leave group. delete group if last member
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text('Members', style: headingStyle),
                  ...widget.group.users.map((user) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: UserListItem(user),
                      )),
                  SizedBox(height: 30),
                  Text('Events', style: headingStyle),
                  if (groupEvents == null) CircularProgressIndicator(),
                  if (groupEvents != null && groupEvents!.isEmpty)
                    Text('no event history'),
                  if (groupEvents != null && groupEvents!.isNotEmpty)
                    ...groupEvents!.map((e) {
                      final filteredWannago = e.wannago.where((wannago) =>
                          !wannago.declined &&
                          !e.invited.map((eu) => eu.id).contains(wannago.user.id));
                      return InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventDetails(event: e))),
                        child: Container(
                            height: 150,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            child: InnerEventDisplay(e, filteredWannago)),
                      );
                    })
                  // TODO list all the events that a group has done (groupId in event == group.id)
                ],
              ),
            ),
          ),
        )));
  }
}
