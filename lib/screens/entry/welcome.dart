import 'package:flutter/material.dart';
import 'package:whatado/screens/entry/login.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(children: [
      Opacity(
        opacity: 0.2,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
              "https://cdn.aarp.net/content/dam/aarp/entertainment/music/2018/03/1140-concert-ticket-prices.jpg",
              fit: BoxFit.cover),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: 50),
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png",
              height: 100),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(text: 'Putting the '),
                          TextSpan(
                            text: 'social ',
                            style:
                                TextStyle(fontSize: 20, color: Colors.red[300]),
                          ),
                          TextSpan(text: 'back in social media.'),
                        ],
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                RoundedArrowButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => LoginScreen())),
                  text: "Let's Go!",
                ),
              ],
            ),
          ),
          SizedBox(height: 30)
        ]),
      ),
    ])));
  }
}
