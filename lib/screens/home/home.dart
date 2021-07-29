import 'package:flutter/material.dart';
import 'package:whatado/widgets/home/my_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  int selectedIndex = 0;
  double x = 0.0;

  @override
  void initState() {
    super.initState();
  }

  void turnPage(int pageNo, double offset) async {
    if (pageController.hasClients) {
      if ((pageController.page! - pageNo).abs() == 1) {
        pageController
            .animateToPage(pageNo,
                duration: Duration(milliseconds: 200), curve: Curves.easeInOut)
            .then((_) => setState(() {}));
      } else {
        pageController.jumpToPage(pageNo);
      }
      setState(() => x = offset);
    }
  }

  Color? iconColor(int pageNo) =>
      pageController.hasClients && pageController.page == pageNo
          ? Colors.white
          : Colors.grey[350];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          backgroundColor: Colors.grey[50],
          elevation: 0.0,
          leading: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png",
            ),
          ),
          actions: [
            Container(
                width: 190,
                margin: EdgeInsets.only(right: 30, top: 7, bottom: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      top: 0,
                      left: x,
                      duration: Duration(milliseconds: 200),
                      child: Container(
                        width: 70,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            padding: EdgeInsets.only(left: 20),
                            onPressed: () => turnPage(0, 0.0),
                            icon: Icon(Icons.public_outlined,
                                color: iconColor(0), size: 30)),
                        IconButton(
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            onPressed: () => turnPage(1, 60.0),
                            icon: Icon(
                              Icons.event_available_outlined,
                              size: 30,
                              color: iconColor(1),
                            )),
                        IconButton(
                            padding: EdgeInsets.only(right: 20),
                            onPressed: () => turnPage(2, 120.0),
                            icon: Icon(
                              Icons.forum_outlined,
                              size: 30,
                              color: iconColor(2),
                            ))
                      ],
                    ),
                  ],
                ))
          ],
        ),
        body: PageView(
          controller: pageController,
          children: [
            Container(),
            Container(color: Colors.grey[200]),
            Container(color: Colors.grey[400])
          ],
        ),
        bottomNavigationBar: MyNavigationBar(
          indexSetState: (val) => setState(() => selectedIndex = val),
          selectedIndex: selectedIndex,
        ));
  }
}
