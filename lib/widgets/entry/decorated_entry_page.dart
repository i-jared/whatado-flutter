import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class DecoratedEntryPage extends StatelessWidget {
  final Widget? child;
  DecoratedEntryPage({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [
        Column(children: [
          Expanded(
            child: Container(
              color: AppColors.primary,
            ),
          ),
          Expanded(child: Container(color: AppColors.background))
        ]),
        SafeArea(
            top: false,
            child: LayoutBuilder(builder: (context, constraints) {
              return Scaffold(
                  resizeToAvoidBottomInset: true,
                  body: SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
                    child: Container(
                      color: AppColors.primary,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints.tight(
                                Size(constraints.maxWidth, constraints.maxHeight * 3 / 13)),
                            child: Stack(
                              children: [
                                Container(
                                    color: AppColors.primary,
                                    child: Center(
                                        child: Opacity(
                                      opacity: 0.7,
                                      // child: Image.asset("assets/party_pattern.png",
                                      //     width: MediaQuery.of(context).size.width,
                                      //     fit: BoxFit.cover),
                                    ))),
                                Center(
                                  child: Image.asset('assets/Whatado_White.png', height: 175),
                                ),
                              ],
                            ),
                          ),
                          ConstrainedBox(
                              constraints: BoxConstraints.tight(
                                  Size(constraints.maxWidth, constraints.maxHeight * 10 / 13)),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.background,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                    child: child,
                                  )))
                        ],
                      ),
                    ),
                  ));
            }))
      ]),
    );
  }
}
