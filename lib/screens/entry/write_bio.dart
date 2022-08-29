import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/labeled_outline_text_field.dart';

import '../../graphql/mutations_graphql_api.graphql.dart';

class WriteBioScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WriteBioScreenState();
}

class _WriteBioScreenState extends State<WriteBioScreen> {
  late bool loading = false;

  @override
  Widget build(BuildContext context) {
    final setupState = context.watch<SetupState>();
    final userState = context.watch<UserState>();
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 50),
        Text('Tell Us More').title().reallybold(),
        SizedBox(height: headingSpacing),
        Text('First, add some of your interests to help connect you with like-minded people.')
            .subtitle()
            .semibold(),
        SizedBox(height: sectionSpacing),
        LabeledOutlineTextField(
          label: 'Bio',
          controller: setupState.bioController,
          hintText: 'A brief introduction',
          maxLines: 7,
        ),
        Spacer(),
        Center(
          child: RoundedArrowButton.text(
            loading: loading,
            disabled: setupState.bioController.text.isEmpty || loading,
            onPressed: () async {
              setState(() => loading = true);
              final provider = UserGqlProvider();
              final result =
                  await provider.updateUser(UserFilterInput(bio: setupState.bioController.text));
              if (result.ok) {
                userState.getUser();
                Navigator.pop(context, true);
              } else {
                setState(() => loading = false);
                BotToast.showText(text: 'Problem updating bio. Please try again later.');
              }
            },
            text: "Continue",
          ),
        ),
        SizedBox(height: sectionSpacing)
      ]),
    );
  }
}
