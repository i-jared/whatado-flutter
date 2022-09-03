import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/public_event.dart';
import 'package:whatado/providers/graphql/events_provider.dart';
import 'package:whatado/screens/home/invite_group_members_page.dart';
import 'package:whatado/screens/home/select_group_requested.dart';
import 'package:whatado/screens/profile/edit_group_details.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/events/event_map.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/general/dark_divider.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class GroupDetails extends StatefulWidget {
  final Group group;
  GroupDetails({required this.group});
  @override
  State<StatefulWidget> createState() => _GroupDetailsState();
}

// TODO create a way to remove people from the group
class _GroupDetailsState extends State<GroupDetails> {
  List<PublicEvent>? groupEvents;
  late bool loading;
  final double sectionSpacing = 20;
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
    final group = widget.group.users.map((g) => g.id).contains(userState.user!.id)
        ? userState.user!.groups.firstWhere((g) => g.id == widget.group.id)
        : widget.group;

    final bool isOwner = userState.user?.id == widget.group.owner;
    return GenericPage(
      appBar: SavingAppBar(
        title: 'Details',
        buttonTitle: isOwner ? "Edit" : "Leave",
        onSave: () => isOwner
            ? Navigator.push(
                context, MaterialPageRoute(builder: (context) => EditGroupDetails(group: group)))
            : null, //TODO add function for user to leave group. delete group if last member
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: sectionSpacing),
            Center(
              child: Container(
                  height: 75,
                  width: 75,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(75 / 2), boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 216, 216, 216),
                        offset: Offset(0.0, 0.0),
                        blurRadius: 12,
                        spreadRadius: 1.0,
                        blurStyle: BlurStyle.normal),
                  ]),
                  child: CachedNetworkImage(imageUrl: group.icon.url)),
            ),
            SizedBox(height: sectionSpacing),
            ShadowBox(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Group Name').subtitle().semibold(),
                DarkDivider(),
                Text(widget.group.name).title().bold(),
              ],
            )),
            if (group.requested.isNotEmpty) ...[
              SizedBox(height: sectionSpacing),
              InkWell(
                onTap: group.requested.isEmpty
                    ? null
                    : () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SelectGroupRequested(group: group))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    group.requested.isEmpty
                        ? Container(
                            width: 40,
                            alignment: Alignment.center,
                            child: Text("--", style: TextStyle(fontSize: 30)),
                          )
                        : PictureWaterfall(radius: 20, loading: false, users: group.requested),
                    Text('Requests', style: headingStyle)
                  ],
                ),
              ),
            ],
            SizedBox(height: sectionSpacing),
            EventMap(
              coordinates: group.location,
              zoomGesturesEnabled: true,
              scrollGesturesEnabled: true,
            ),
            SizedBox(height: sectionSpacing),
            ShadowBox(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Members').subtitle().semibold(),
                    if (group.users.map((u) => u.id).contains(userState.user!.id))
                      TextButton(
                          style: ButtonStyle(
                              visualDensity: VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity)),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InviteGroupMembersPage(
                                      title: 'Invite Group Members', group: group))),
                          child: Text("+Add Members",
                              style: TextStyle(
                                color: AppColors.primary,
                              ))),
                  ],
                ),
                DarkDivider(),
                ...group.users.map((user) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: UserListItem(user),
                    )),
              ]),
            ),
            SizedBox(height: sectionSpacing),
            // TODO display past events publicly somehow
            // Text('Events', style: headingStyle),
            // if (groupEvents == null) CircularProgressIndicator(),
            // if (groupEvents != null && groupEvents!.isEmpty) Text('no event history'),
            // if (groupEvents != null && groupEvents!.isNotEmpty)
            //   ...groupEvents!.map((e) {
            //     final filteredWannago = e.wannago.where((wannago) =>
            //         !wannago.declined && !e.invited.map((eu) => eu.id).contains(wannago.user.id));
            //     return Container(
            //         height: 150,
            //         margin: EdgeInsets.symmetric(vertical: 8),
            //         child: InnerEventDisplay(e, filteredWannago));
            //   })
          ]),
        ),
      ),
    );
  }
}
