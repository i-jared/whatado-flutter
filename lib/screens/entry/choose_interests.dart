import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/utils/extensions/text.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/interests/combined_interest_search.dart';

class ChooseInterestsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChooseInterestsScreenState();
}

class _ChooseInterestsScreenState extends State<StatefulWidget> {
  late bool loading;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    textController.addListener(() => setState(() {}));
    loading = false;
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final setupState = Provider.of<SetupState>(context);
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 50),
          Text('Add Your Interests').title().reallybold(),
          SizedBox(height: headingSpacing),
          Text('First, add some of your interests to help connect you with like-minded people.')
              .subtitle()
              .semibold(),
          SizedBox(height: sectionSpacing),
          CombinedInterestSearch(
            textController: textController,
            interests: setupState.popularInterests,
            customInterests: setupState.customInterests,
            selectedInterests: setupState.selectedInterests,
            addCustomInterest: setupState.addCustomInterest,
            addInterest: setupState.selectInterest,
            removeCustomInterest: setupState.removeCustomInterest,
            removeInterest: setupState.unselectInterest,
            tooltipMessage: 'What kind of events do you want to see?',
          ),
          // Spacer(),
          SizedBox(height: sectionSpacing),
          Center(
            child: RoundedArrowButton.text(
              disabled:
                  (setupState.selectedInterests.isEmpty && setupState.customInterests.isEmpty) ||
                      loading,
              loading: loading,
              onPressed: () async {
                setState(() => loading = true);
                if (await setupState.saveInterests()) {
                  userState.getUser();
                  Navigator.pop(context, true);
                } else {
                  setState(() {
                    loading = false;
                    BotToast.showText(text: 'Error updating interests. Please try again later.');
                  });
                }
              },
              text: "Continue",
            ),
          ),
          SizedBox(height: sectionSpacing),
        ]),
      ),
    );
  }
}
