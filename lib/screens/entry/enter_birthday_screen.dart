import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/events/shadow_box.dart';

class EnterBirthdayScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EnterBirthdayScreenState();
}

class _EnterBirthdayScreenState extends State<StatefulWidget> {
  Timer? _debounce;
  late bool loading = false;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void startTimer(SetupState setupState, DateTime datetime) {
    _debounce?.cancel();
    _debounce = Timer(Duration(milliseconds: 500), () => setupState.birthdate = datetime);
  }

  @override
  Widget build(BuildContext context) {
    final setupState = Provider.of<SetupState>(context);
    final userState = context.watch<UserState>();
    final padding = 30.0;
    final sectionSpacing = 35.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 50),
        Text('Select Your Birthdate').title().reallybold(),
        SizedBox(height: sectionSpacing),
        ShadowBox(
            child: DatePickerWidget(
          dateFormat: 'MMM-dd-yyyy',
          onChange: (date, _) => startTimer(setupState, date),
          initialDate: DateTime(2000, 7, 2),
          firstDate: DateTime(1900, 1, 1),
          lastDate: DateTime.now().subtract(Duration(days: 365 * 18 - 5)),
          pickerTheme: DateTimePickerTheme(
              backgroundColor: AppColors.background,
              dividerColor: Colors.transparent,
              itemTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        )),
        Spacer(),
        Center(
          child: RoundedArrowButton.text(
            loading: loading,
            disabled: setupState.birthdate == null,
            onPressed: () async {
              final provider = UserGqlProvider();
              final result =
                  await provider.updateUser(UserFilterInput(birthday: setupState.birthdate));
              if (result.ok) {
                userState.getUser();
                Navigator.pop(context, true);
              } else {
                setState(() => loading = false);
                BotToast.showText(text: 'Problem updating birthdate. Please try again later.');
              }
            },
            text: "Continue",
          ),
        ),
        SizedBox(height: sectionSpacing),
      ]),
    );
  }
}
