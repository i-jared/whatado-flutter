import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/widgets/appbars/default_app_bar%20copy.dart';

class UserProfile extends StatefulWidget {
  final EventUser user;
  UserProfile({required this.user});

  @override
  State<StatefulWidget> createState() => _StateUserProfile();
}

class _StateUserProfile extends State<UserProfile> {
  late int selectedIndex;
  List<Image> images = [];

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
    return Container(
      color: Colors.grey[50],
      child: SafeArea(
        child: Scaffold(
          appBar: UserProfileAppBar(title: widget.user.name, user: widget.user),
          body: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: images,
                options: CarouselOptions(
                    onPageChanged: (i, _) => setState(() => selectedIndex = i),
                    height: MediaQuery.of(context).size.width,
                    autoPlay: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 1.0),
              ),
              SizedBox(height: 5),
              Stack(
                children: [
                  Row(
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
                ],
              ),
              SizedBox(height: sectionSpacing),
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
                    child:
                        Text(widget.user.bio, style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              SizedBox(height: headingSpacing),
            ],
          )),
        ),
      ),
    );
  }
}
