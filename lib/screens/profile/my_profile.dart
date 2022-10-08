import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/screens/home/settings.dart';
import 'package:whatado/screens/profile/edit_my_profile.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/events/picture_waterfall.dart';
import 'package:whatado/widgets/events/shadow_box.dart';
import 'package:whatado/widgets/general/app_bar_action.dart';
import 'package:whatado/widgets/general/dark_divider.dart';
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
  final padding = 20.0;
  final imageSpacing = 10.0;
  final sectionSpacing = 20.0;

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
    final homeState = Provider.of<HomeState>(context);
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
            Positioned(
                top: 0,
                right: 0,
                child: AppBarAction(
                  child: IconButton(
                      icon: Icon(Icons.settings, color: AppColors.primary, size: 25),
                      onPressed: () => Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Settings()))),
                ))
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
                  child: Icon(Icons.edit, color: Colors.white, size: 25),
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => EditMyProfile(user: user)))),
              SizedBox(height: sectionSpacing),
              ShadowBox(
                child: Column(
                  children: [
                    Row(children: [
                      Text('Groups').semibold().subtitle(),
                      Spacer(),
                      TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.zero),
                              visualDensity: VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity)),
                          onPressed:
                              groupRequests == 0 ? null : () => homeState.bottomBarPageNo = 2,
                          child: Text("$groupRequests group requests",
                              style: TextStyle(
                                  color:
                                      groupRequests == 0 ? Colors.grey[400] : AppColors.primary)))
                    ]),
                    DarkDivider(),
                    InkWell(
                      onTap: user.groups.isEmpty ? null : () => homeState.bottomBarPageNo = 2,
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
                  ],
                ),
              ),
              SizedBox(height: sectionSpacing),
              ShadowBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Interests').subtitle().semibold(),
                        SizedBox(width: 10),
                        // Remove this replace with hint
                        Tooltip(
                          showDuration: Duration(seconds: 3),
                          preferBelow: false,
                          triggerMode: TooltipTriggerMode.tap,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          padding: EdgeInsets.all(8),
                          message: 'Interests are only visible to you.',
                          child: Icon(Icons.help_outline, size: 15, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    DarkDivider(),
                    Wrap(
                      // alignment: WrapAlignment.center,
                      spacing: 10.0,
                      runSpacing: 5.0,
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
            ],
          ),
        ),
        SizedBox(height: 50),
      ],
    ));
  }
}
