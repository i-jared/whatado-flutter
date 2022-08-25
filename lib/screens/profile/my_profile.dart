import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/screens/home/group_list_page.dart';
import 'package:whatado/screens/profile/edit_my_profile.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';
import 'package:whatado/widgets/interests/interest_bubble.dart';
import 'package:whatado/widgets/users/user_heading.dart';

class MyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  late int selectedIndex;
  final headingStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final imageSpacing = 10.0;
  final sectionSpacing = 17.0;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  void didChangeDependencies() {
    final userState = Provider.of<UserState>(context, listen: false);
    final images = userState.user?.photoUrls.map((url) => Image.network(url)).toList() ?? [];
    for (Image image in images) {
      precacheImage(image.image, context);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final user = userState.user!;
    final groupRequests = user.groups.fold<int>(0, (sum, group) => sum + group.requested.length);
    if (userState.user == null) {
      SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
        await userState.getUser();
      });
      return Center(child: CircularProgressIndicator());
    }
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            CarouselSlider(
              items: userState.user!.photoUrls
                  .map((url) => Image.network(
                        url,
                      ))
                  .toList(),
              options: CarouselOptions(
                  onPageChanged: (i, _) => setState(() => selectedIndex = i),
                  height: MediaQuery.of(context).size.width,
                  autoPlay: false,
                  enableInfiniteScroll: false,
                  viewportFraction: 1.0),
            ),
            Positioned(
              bottom: 5,
              right: 0,
              left: 0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                      (userState.user?.photoUrls.length ?? 0) * 2,
                      (i) => i.isEven
                          ? Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: i / 2 == selectedIndex ? Colors.black : Colors.grey,
                                  shape: BoxShape.circle),
                            )
                          : Container(width: 5))),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: sectionSpacing),
              UserHeading(
                  user: PublicUser.fromUser(user),
                  child: Row(
                    children: [
                      Text('Edit', style: TextStyle(fontSize: 15, color: Colors.white)),
                      SizedBox(width: 10),
                      Icon(Icons.edit_outlined, color: Colors.white, size: 15)
                    ],
                  ),
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => EditMyProfile(user: user)))),
              SizedBox(height: sectionSpacing * 2),
              Row(children: [
                Text('Groups', style: headingStyle),
                Spacer(),
                TextButton(
                    onPressed: groupRequests == 0
                        ? null
                        : () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GroupListPage(
                                      title: 'Groups',
                                      groups: user.groups,
                                      leftPadding: false,
                                    ))),
                    child: Text("$groupRequests group requests",
                        style: TextStyle(
                            color: groupRequests == 0 ? Colors.grey[400] : AppColors.primary)))
              ]),
              SizedBox(height: headingSpacing),
              InkWell(
                onTap: user.groups.isEmpty
                    ? null
                    : () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => GroupListPage(
                                title: "Groups", groups: user.groups, leftPadding: false))),
                child: Container(
                    height: 40,
                    child: user.groups.isEmpty
                        ? Container(
                            width: 40,
                            alignment: Alignment.center,
                            child: Text("--", style: TextStyle(fontSize: 30)),
                          )
                        : Row(
                            children: [
                              PictureWaterfall(
                                  radius: 20, loading: false, users: user.groups.first.users),
                              SizedBox(width: 24),
                              user.groups.length > 1
                                  ? Text('+ ${user.groups.length - 1} more')
                                  : SizedBox.shrink(),
                            ],
                          )),
              ),
              SizedBox(height: sectionSpacing * 2),
              Row(
                children: [
                  Text('Interests', style: headingStyle),
                  SizedBox(width: 10),
                  // Remove this replace with hint
                  Text('(only visible to you)', style: TextStyle(fontSize: 15, color: Colors.grey)),
                ],
              ),
              SizedBox(height: headingSpacing),
              Wrap(
                spacing: 10.0,
                runSpacing: 0.0,
                children: userState.user!.interests
                    .map((interest) => InterestBubble(
                          selected: true,
                          text: interest.title,
                          onSelected: (_) => true,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
      ],
    ));
  }
}
