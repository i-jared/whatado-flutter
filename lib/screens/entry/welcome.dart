import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:whatado/screens/entry/login.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent));
    _controller = VideoPlayerController.asset('assets/welcome_video.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // background image
      FittedBox(
        fit: BoxFit.cover,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: VideoPlayer(_controller),
        ),
      ),
      Opacity(opacity: 0.6, child: Container(color: Colors.black)),

      // front page elements. all padded 30 horizontally
      // slogan text
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Spacer(),
            Image.asset('assets/Whatado_White.png'),
            Spacer(),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20),
            //     child: RichText(
            //       textAlign: TextAlign.center,
            //       text: TextSpan(
            //         children: [
            //           TextSpan(text: 'Putting the '),
            //           TextSpan(
            //             text: 'social ',
            //             style:
            //                 TextStyle(fontSize: 20, color: AppColors.primary),
            //           ),
            //           TextSpan(text: 'back in social media.'),
            //         ],
            //         style: TextStyle(fontSize: 20, color: Colors.black),
            //       ),
            //     ),
            //   ),
            // ),
            // continue arrow button @ bottom
            Spacer(),
            RoundedArrowButton.text(
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => LoginScreen())),
              text: "Let's Go!",
            ),
            SizedBox(height: 30)
          ]),
        ),
      ),
    ]));
  }
}
