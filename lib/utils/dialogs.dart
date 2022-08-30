import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/screens/entry/add_friends.dart';
import 'package:whatado/screens/entry/choose_gender_screen.dart';
import 'package:whatado/screens/entry/choose_interests.dart';
import 'package:whatado/screens/entry/enter_birthday_screen.dart';
import 'package:whatado/screens/entry/select_photos.dart';
import 'package:whatado/screens/entry/write_bio.dart';
import 'package:whatado/widgets/dialog/confirm_cancel_dialog.dart';

Future<T?> showMyDialog<T>(BuildContext context, Widget dialog) async {
  return await showDialog<T>(context: context, builder: (BuildContext context) => dialog);
}

Future<bool> runOnboarding(BuildContext context, int startingPage) async {
  final onboardingWidgets = [
    ChooseInterestsScreen(),
    WriteBioScreen(),
    ChooseGenderScreen(),
    EnterBirthdayScreen(),
    SelectPhotosScreen(),
    AddFriends(),
  ];

  bool returnVal = false;
  final bool? beginOnboard = await showMyDialog(
      context,
      ConfirmCancelDialog(
          title: 'Wait!',
          body: 'To use all features, you\'ll have to finish setting up your account.',
          confirmText: 'OK!',
          onConfirm: () => Navigator.pop(context, true)));
  if (beginOnboard == null || !beginOnboard) return false;
  for (int i = startingPage; i < onboardingWidgets.length; i++) {
    returnVal = await showEntryBottomSheet(context, onboardingWidgets[i]);
    if (!returnVal) break;
  }
  return returnVal;
}

Future<T?> showEntryBottomSheet<T>(BuildContext context, Widget child) {
  return showModalBottomSheet<T>(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      constraints: BoxConstraints.tight(
          Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height)),
      context: context,
      builder: (BuildContext context) => BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
                      height: MediaQuery.of(context).size.height * 5 / 6,
                      width: MediaQuery.of(context).size.width,
                      child: child),
                ),
                Positioned(
                    top: 50,
                    left: 20,
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.clear),
                      iconSize: 40,
                      onPressed: () => Navigator.pop(context, false),
                    ))
              ],
            ),
          ));
}
