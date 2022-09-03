import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/user_list_page.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/general/dark_divider.dart';

class UserHeading extends StatefulWidget {
  final PublicUser user;
  final Widget child;
  final Function() onPressed;
  UserHeading({required this.user, required this.onPressed, required this.child});
  @override
  State<StatefulWidget> createState() => _UserHeadingState();
}

class _UserHeadingState extends State<UserHeading> {
  List<PublicUser> friends = [];
  late bool loading = true;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    final provider = UserGqlProvider();
    final result = await provider.friendsById(widget.user.id);
    if (mounted)
      setState(() {
        loading = false;
        friends = result.data ?? [];
      });
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final friendRequests = userState.user!.friendRequests;
    final headingStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final sectionSpacing = 20.0;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child:
                Text(widget.user.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                backgroundColor: MaterialStateProperty.all(AppColors.primary)),
            onPressed: widget.onPressed,
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                child: widget.child),
          ),
        ],
      ),
      Text('${(DateTime.now().difference(widget.user.birthday).inDays ~/ 365)}',
          style: TextStyle(fontSize: 18, color: Colors.grey)),
      SizedBox(height: sectionSpacing),
      ShadowBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bio").subtitle().semibold(),
            DarkDivider(),
            Text(widget.user.bio, style: TextStyle(fontSize: 18)).semibold(),
          ],
        ),
      ),
      SizedBox(height: sectionSpacing),
      ShadowBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Friends").semibold().subtitle(),
                if (userState.user?.id == widget.user.id)
                  TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          visualDensity: VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity)),
                      onPressed: friendRequests.length == 0
                          ? null
                          : () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserListPage(
                                        title: 'Friend Requests',
                                        users: friendRequests,
                                      ))),
                      child: Text("${friendRequests.length} friend requests",
                          style: TextStyle(
                              color: friendRequests.length == 0
                                  ? Colors.grey[400]
                                  : AppColors.primary)))
              ],
            ),
            DarkDivider(),
            InkWell(
              onTap: friends.isEmpty
                  ? null
                  : () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              UserListPage(title: "Friends", users: friends))),
              child: Container(
                  height: 40,
                  child: !loading && friends.isEmpty
                      ? Container(
                          width: 40,
                          alignment: Alignment.center,
                          child: Text("--", style: TextStyle(fontSize: 30)),
                        )
                      : PictureWaterfall(radius: 20, loading: loading, users: friends)),
            ),
          ],
        ),
      ),
    ]);
  }
}
