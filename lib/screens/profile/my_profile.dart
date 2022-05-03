import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/screens/profile/edit_my_profile.dart';
import 'package:whatado/state/user_state.dart';
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
    final images =
        userState.user?.photoUrls.map((url) => Image.network(url)).toList() ??
            [];
    for (Image image in images) {
      precacheImage(image.image, context);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final user = userState.user!;
    if (userState.user == null) {
      SchedulerBinding.instance?.scheduleFrameCallback((timeStamp) async {
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
                                  color: i / 2 == selectedIndex
                                      ? Colors.black
                                      : Colors.grey,
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
                  user: EventUser.fromUser(user),
                  child: Row(
                    children: [
                      Text('Edit',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      SizedBox(width: 10),
                      Icon(Icons.edit_outlined, color: Colors.white, size: 15)
                    ],
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditMyProfile(user: user)))),
              SizedBox(height: sectionSpacing * 2),
              Text('Groups', style: headingStyle),
              SizedBox(height: headingSpacing),
              // TODO: implement groups
              SizedBox(height: sectionSpacing * 2),
              Row(
                children: [
                  Text('Interests', style: headingStyle),
                  SizedBox(width: 10),
                  Text('(only visible to you)',
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
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
