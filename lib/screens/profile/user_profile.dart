import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/user_profile_app_bar.dart';
import 'package:whatado/widgets/users/user_heading.dart';

class UserProfile extends StatefulWidget {
  final EventUser user;
  UserProfile({required this.user});

  @override
  State<StatefulWidget> createState() => _StateUserProfile();
}

class _StateUserProfile extends State<UserProfile> {
  late int selectedIndex;
  List<Image> images = [];
  late bool loading = false;

  @override
  void initState() {
    super.initState();
    images = widget.user.photoUrls.map((url) => Image.network(url)).toList();
    selectedIndex = 0;
  }

  @override
  void didChangeDependencies() {
    for (Image image in images) {
      precacheImage(image.image, context);
    }
    super.didChangeDependencies();
  }

  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final imageSpacing = 10.0;
  final sectionSpacing = 30.0;

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final user = userState.user!;
    final friends = user.friends.any((f) => f.id == widget.user.id);
    final youRequested =
        user.requestedFriends.any((f) => f.id == widget.user.id);
    final theyRequested =
        user.friendRequests.any((f) => f.id == widget.user.id);

    return Container(
      color: Colors.transparent,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: UserProfileAppBar(title: widget.user.name, user: widget.user),
          body: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    items: images,
                    options: CarouselOptions(
                        onPageChanged: (i, _) =>
                            setState(() => selectedIndex = i),
                        height: MediaQuery.of(context).size.width,
                        autoPlay: false,
                        enableInfiniteScroll: false,
                        viewportFraction: 1.0),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                            (widget.user.photoUrls.length) * 2,
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
                                : SizedBox(width: 5))),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: sectionSpacing),
                    UserHeading(
                      user: widget.user,
                      onPressed: () => getFunction(
                          context, friends, youRequested, theyRequested),
                      child: loading
                          ? Center(
                              child: SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ))
                          : Row(
                              children: [
                                Text(
                                    getText(
                                        friends, youRequested, theyRequested),
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                SizedBox(width: 10),
                                Icon(
                                    getIcon(
                                        friends, youRequested, theyRequested),
                                    color: Colors.white,
                                    size: 15)
                              ],
                            ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  String getText(bool friends, bool youRequested, bool theyRequested) {
    return friends
        ? 'Friends'
        : youRequested
            ? 'Cancel'
            : theyRequested
                ? 'Accept'
                : 'Add';
  }

  IconData getIcon(bool friends, bool youRequested, bool theyRequested) {
    return friends
        ? Icons.check
        : youRequested
            ? Icons.clear
            : theyRequested
                ? Icons.check
                : Icons.person_add_alt_outlined;
  }

  void getFunction(BuildContext context, bool friends, bool youRequested,
      bool theyRequested) async {
    final userState = Provider.of<UserState>(context, listen: false);
    final provider = UserGqlProvider();
    setState(() => loading = true);
    if (friends) {
      // unfriend (with modal)
      await showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                  title: Text('Unfriend?'),
                  content: Text(
                      'Are you sure you want to unfriend ${widget.user.name}?'),
                  actions: [
                    TextButton(
                        child: Text("Cancel"),
                        onPressed: () => Navigator.pop(context)),
                    TextButton(
                        child: Text("Unfriend"),
                        onPressed: () async {
                          await provider.unfriend(widget.user.id);
                          Navigator.pop(context);
                        }),
                  ]));
    } else if (youRequested) {
      // cancel
      await provider.unrequestFriend(widget.user.id);
    } else if (theyRequested) {
      // accept
      await provider.acceptFriend(widget.user.id);
    } else {
      // send request
      await provider.requestFriend(widget.user.id);
    }
    await userState.getUser();
    setState(() => loading = false);
  }
}
