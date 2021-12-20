import 'package:flutter/material.dart';
import 'package:whatado/screens/entry/login.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // background image
      Opacity(
        opacity: 0.2,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
              "https://cdn.aarp.net/content/dam/aarp/entertainment/music/2018/03/1140-concert-ticket-prices.jpg",
              fit: BoxFit.cover),
        ),
      ),

      // front page elements. all padded 30 horizontally
      // slogan text
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: 50),
            Image.asset('assets/Whatado_FullColor.png', height: 100),
            SizedBox(height: 20),
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
            //                 TextStyle(fontSize: 20, color: Color(0xfff7941d)),
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
            RoundedArrowButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => LoginScreen())),
              text: "Let's Go!",
            ),
            SizedBox(height: 30)
          ]),
        ),
      ),
    ]));
  }
}
