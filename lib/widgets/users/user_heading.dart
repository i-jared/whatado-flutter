import 'package:flutter/material.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/user_list_page.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';

class UserHeading extends StatefulWidget {
  final EventUser user;
  final Widget child;
  final Function() onPressed;
  UserHeading(
      {required this.user, required this.onPressed, required this.child});
  @override
  State<StatefulWidget> createState() => _UserHeadingState();
}

class _UserHeadingState extends State<UserHeading> {
  List<EventUser> friends = [];
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
    final headingStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final sectionSpacing = 17.0;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(widget.user.name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
                backgroundColor: MaterialStateProperty.all(Color(0xfff7941d))),
            onPressed: widget.onPressed,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                child: widget.child),
          ),
        ],
      ),
      Text('${(DateTime.now().difference(widget.user.birthday).inDays ~/ 365)}',
          style: TextStyle(fontSize: 18, color: Colors.grey)),
      SizedBox(height: sectionSpacing),
      Divider(),
      SizedBox(height: sectionSpacing),
      Text("Bio", style: headingStyle),
      SizedBox(height: headingSpacing),
      Text(widget.user.bio, style: TextStyle(fontSize: 18)),
      SizedBox(height: sectionSpacing),
      Text("Friends", style: headingStyle),
      SizedBox(height: headingSpacing),
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
                : PictureWaterfall(
                    radius: 20, loading: loading, users: friends)),
      ),
    ]);
  }
}
