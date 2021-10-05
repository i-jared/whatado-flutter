import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/entry/select_photos.dart';
import 'package:whatado/state/setup_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/buttons/rounded_arrow_button.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class WriteBioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final setupState = Provider.of<SetupState>(context);
    final headingStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;
    final dateFormat = DateFormat('EEE, M-d-y');

    return Scaffold(
        body: Form(
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Center(
                        child: Image.asset("assets/text_logo.png", height: 100),
                      ),
                      SizedBox(height: sectionSpacing),
                      Text('Write Bio', style: headingStyle),
                      SizedBox(height: headingSpacing),
                      Text('Next tell us a little about yourself.'),
                      SizedBox(height: headingSpacing),
                      MyTextField(
                        hintText: 'Write bio here',
                        maxLines: null,
                        controller: setupState.bioController,
                      ),
                      SizedBox(height: sectionSpacing),
                      Text('Birthday', style: headingStyle),
                      SizedBox(height: headingSpacing),
                      TextFormField(
                        readOnly: true,
                        controller: setupState.dateController,
                        onTap: () => DatePicker.showDatePicker(context,
                            onConfirm: (time) => setupState
                                .dateController.text = dateFormat.format(time),
                            minTime: DateTime.now(),
                            maxTime: DateTime.now().add(Duration(days: 100))),
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Date',
                          hintStyle: TextStyle(fontSize: 13),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                      SizedBox(height: sectionSpacing),
                      Spacer(),
                      Center(
                        child: RoundedArrowButton(
                          disabled: setupState.bioController.text == '',
                          onPressed: () async {
                            // frankenstein the time from user input
                            final prefixSplit =
                                setupState.dateController.text.split(" ");
                            final dateSplit = prefixSplit[1].split("-");
                            final finalTime = DateTime.parse(
                                '${dateSplit[2]}-${dateSplit[0].padLeft(2, '0')}-${dateSplit[1].padLeft(2, '0')}');
                            // send the update
                            final provider = UserGqlProvider();
                            await provider.updateUser(UserFilterInput(
                                bio: setupState.bioController.text,
                                birthday: finalTime));
                            userState.getUser();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SelectPhotosScreen()));
                          },
                          text: "Continue",
                        ),
                      ),
                      SizedBox(height: sectionSpacing)
                    ]),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
