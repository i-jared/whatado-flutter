import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';

class UserProfile extends StatefulWidget {
  final EventUser initialUserData;
  UserProfile({required this.initialUserData});

  @override
  State<StatefulWidget> createState() => _StateUserProfile();
}

class _StateUserProfile extends State<UserProfile> {
  bool loading = true;
  User? user;

  @override
  void initState() {
    super.initState();
    loadUser();
  }

  void loadUser() async {
    final provider = UserGqlProvider();
    final result = await provider.user(widget.initialUserData.id);
    setState(() {
      user = result.data;
      loading = false;
    });
  }

  final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final headingSpacing = 10.0;
  final padding = 30.0;
  final imageSpacing = 10.0;
  final sectionSpacing = 30.0;
  @override
  Widget build(BuildContext context) {
    final imageWidth =
        (MediaQuery.of(context).size.width - (padding + imageSpacing) * 2) /
            3.0;
    return Scaffold(
      appBar: DefaultAppBar(title: widget.initialUserData.name),
      body: (user == null)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                  items:
                      user!.photoUrls.map((url) => Image.network(url)).toList(),
                  options: CarouselOptions(
                      height: MediaQuery.of(context).size.width,
                      autoPlay: false,
                      enableInfiniteScroll: false,
                      viewportFraction: 1.0),
                ),
                SizedBox(height: sectionSpacing),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: padding),
                          child: Text('BIO', style: headingStyle),
                        ),
                        SizedBox(height: headingSpacing),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: padding),
                          child: loading || user == null
                              ? Shimmer.fromColors(
                                  baseColor: Colors.grey[200] ?? Colors.grey,
                                  highlightColor: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          color: Colors.grey[100],
                                          height: 15,
                                          width: MediaQuery.of(context)
                                              .size
                                              .width),
                                      Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          color: Colors.grey[100],
                                          height: 15,
                                          width: MediaQuery.of(context)
                                              .size
                                              .width),
                                      Container(
                                          color: Colors.grey[100],
                                          height: 15,
                                          width: 100),
                                    ],
                                  ))
                              : Text(user!.bio, style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                    PopupMenuButton(
                        padding: EdgeInsets.zero,
                        onSelected: (value) async {
                          final userProvider = UserGqlProvider();
                          if (value == 'report') {
                            await userProvider
                                .flagUser(widget.initialUserData.id);
                          }
                          if (value == 'block') {
                            await userProvider
                                .blockUser(widget.initialUserData.id);
                          }
                        },
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Row(children: [
                                  Icon(Icons.report_outlined, size: 30),
                                  SizedBox(width: 10),
                                  Text('report')
                                ]),
                                value: 'report',
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Icon(Icons.block_outlined,
                                        color: Colors.red, size: 30),
                                    SizedBox(width: 10),
                                    Text('block',
                                        style: TextStyle(color: Colors.red))
                                  ],
                                ),
                                value: 'block',
                              )
                            ]),
                  ],
                ),
                SizedBox(height: headingSpacing),
              ],
            )),
    );
  }
}
