import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Center(
                        child: Image.asset("assets/text_logo.png", height: 100),
                      ),
                      SizedBox(height: 40),
                      Text('Write Bio',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      MyTextField(
                        hintText: 'Write bio here',
                        maxLines: null,
                        controller: setupState.bioController,
                      ),
                      SizedBox(height: 35),
                      Spacer(),
                      Center(
                        child: RoundedArrowButton(
                          disabled: setupState.bioController.text == '',
                          onPressed: () async {
                            await setupState.saveBio();
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
                      SizedBox(height: 40)
                    ]),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
