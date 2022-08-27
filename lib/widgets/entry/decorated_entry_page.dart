import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class DecoratedEntryPage extends StatelessWidget {
  final Widget? child;
  DecoratedEntryPage({this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: LayoutBuilder(builder: (context, constraints) {
                return Container(
                  color: AppColors.primary,
                  child: SingleChildScrollView(
                      physics: ClampingScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: constraints.maxHeight,
                          maxWidth: constraints.maxWidth,
                        ),
                        child: Column(children: [
                          Flexible(
                            flex: 3,
                            child: Stack(
                              children: [
                                Container(
                                    color: AppColors.primary,
                                    child: Center(
                                        child: Opacity(
                                      opacity: 0.7,
                                      child: Image.asset("assets/party_pattern.png",
                                          width: MediaQuery.of(context).size.width,
                                          fit: BoxFit.cover),
                                    ))),
                                Center(
                                  child: Image.asset('assets/Whatado_White.png', height: 175),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                              flex: 10,
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
                        ]),
                      )),
                );
              })))
    ]);
  }
}
