import 'package:bot_toast/bot_toast.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/events/shadow_box.dart';

import '../../graphql/mutations_graphql_api.graphql.dart';

class ChooseGenderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseGenderScreenState();
}

class _ChooseGenderScreenState extends State<StatefulWidget> {
  late bool loading;
  @override
  void initState() {
    super.initState();
    loading = false;
  }

  final genders = [
    {'gender': Gender.female, 'text': 'Female'},
    {'gender': Gender.male, 'text': 'Male'},
  ];

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final setupState = Provider.of<SetupState>(context);
    final padding = 30.0;
    final sectionSpacing = 35.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 50),
        Text('Choose your Gender').title().reallybold(),
        SizedBox(height: sectionSpacing),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: genders
                .mapIndexed((i, g) => Column(
                      children: [
                        ShadowBox(
                          color: g['gender'] == setupState.gender
                              ? AppColors.primary
                              : AppColors.background,
                          child: InkWell(
                            onTap: () => setupState.gender = g['gender'] as Gender,
                            child: Container(
                                height: 100,
                                width: 100,
                                child: Icon(i == 1 ? Icons.male_rounded : Icons.female_rounded,
                                    color: g['gender'] == setupState.gender
                                        ? Colors.white
                                        : Colors.black,
                                    size: 75)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(g['text'] as String).bold()
                      ],
                    ))
                .toList()),
        Spacer(),
        Center(
          child: RoundedArrowButton.text(
            disabled: loading || setupState.gender == null,
            loading: loading,
            onPressed: () async {
              setState(() => loading = true);
              final provider = UserGqlProvider();
              final result = await provider.updateUser(UserFilterInput(gender: setupState.gender));
              if (result.ok) {
                userState.getUser();
                Navigator.pop(context, true);
              } else {
                setState(() => loading = false);
                BotToast.showText(text: 'Problem updating gender. Please try again later.');
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
