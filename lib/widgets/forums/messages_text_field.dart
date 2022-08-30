import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/models/event.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/input/labeled_outline_text_field.dart';
import 'package:whatado/widgets/input/simple_outline_text.dart';

class MessagesTextField extends StatefulWidget {
  final Forum forum;
  final Event event;
  MessagesTextField({required this.forum, required this.event});
  @override
  State<StatefulWidget> createState() => _MessagesTextFieldState();
}

class _MessagesTextFieldState extends State<MessagesTextField> {
  late int? selectedSurvey = 0;
  late int customTextFields = 2;
  late List<TextEditingController> customTextControllers;
  late bool createSurvey = false;
  final double height = 50.0;

  initState() {
    super.initState();
    customTextControllers = [TextEditingController(), TextEditingController()];
    customTextControllers.forEach((c) => c.addListener(() => setState(() {})));
    customTextControllers.forEach((element) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final chatState = Provider.of<ChatState>(context);
    final userState = Provider.of<UserState>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 198, 198, 198),
              offset: Offset(0.0, -1.0),
              blurRadius: 8,
              spreadRadius: 1.0,
              blurStyle: BlurStyle.normal),
          BoxShadow(color: AppColors.background, offset: Offset(0.0, 7)),
        ],
        color: AppColors.background,
      ),
      child: widget.forum.chatDisabled && userState.user?.id != widget.event.creator.id
          ? SizedBox(
              height: height,
              child: Center(
                  child: Text('chat is disabled for this group', style: TextStyle(fontSize: 17))))
          : Column(
              children: [
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                        padding: EdgeInsets.all(0),
                        visualDensity: VisualDensity(horizontal: VisualDensity.minimumDensity),
                        onPressed: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                          setState(() => createSurvey = !createSurvey);
                        },
                        icon: Icon(
                            createSurvey
                                ? Icons.disabled_by_default_rounded
                                : Icons.add_box_rounded,
                            size: 30),
                        color: AppColors.primary),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: chatState.textController,
                        textCapitalization: TextCapitalization.sentences,
                        maxLines: null,
                        toolbarOptions: ToolbarOptions(copy: true, paste: true, selectAll: true),
                        onTap: () {
                          setState(() => createSurvey = false);
                        },
                        decoration: InputDecoration(
                            hintText: "Type your message", border: InputBorder.none),
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    IconButton(
                        disabledColor: Colors.grey,
                        color: AppColors.primary,
                        onPressed: chatState.textController.text.isEmpty
                            ? null
                            : () => userState.user == null
                                ? null
                                : chatState.sendMessage(userState.user!.id),
                        icon: Icon(Icons.send, size: 35)),
                  ],
                ),
                if (createSurvey) ...[
                  Divider(color: Colors.grey),
                  Container(
                      height: 425,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            LabeledOutlineTextField(
                                label: 'Question',
                                controller: chatState.surveyController,
                                hintText: 'Ask question here'),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.disabled,
                                borderRadius: BorderRadius.circular(AppRadii.button),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Row(children: [
                                      Transform.scale(
                                        scale: 1.3,
                                        child: Radio<int>(
                                          value: 0,
                                          activeColor: AppColors.primary,
                                          groupValue: selectedSurvey,
                                          onChanged: (val) => setState(() => selectedSurvey = val),
                                        ),
                                      ),
                                      Text('Yes/No/Maybe',
                                          style: TextStyle(fontWeight: FontWeight.w600)),
                                    ]),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Transform.scale(
                                          scale: 1.3,
                                          child: Radio<int>(
                                            activeColor: AppColors.primary,
                                            value: 1,
                                            groupValue: selectedSurvey,
                                            onChanged: (val) =>
                                                setState(() => selectedSurvey = val),
                                          ),
                                        ),
                                        Text('Custom Text',
                                            style: TextStyle(fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            if (selectedSurvey == 1)
                              ...List.generate(
                                  customTextFields,
                                  (i) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SimpleOutlinedTextField(
                                          hintText: 'New Answer...',
                                          controller: customTextControllers[i],
                                        ),
                                      )),
                            SizedBox(height: 10),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              Row(
                                children: [
                                  selectedSurvey == 0
                                      ? SizedBox.shrink()
                                      : InkWell(
                                          onTap: () {
                                            customTextControllers.add(TextEditingController()
                                              ..addListener(() => setState(() {})));
                                            setState(() => customTextFields = customTextFields + 1);
                                          },
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  color: AppColors.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(AppRadii.button)),
                                              child: Icon(Icons.add,
                                                  size: 30, color: AppColors.background)),
                                        ),
                                  selectedSurvey == 0 ? SizedBox.shrink() : SizedBox(width: 10),
                                  selectedSurvey == 0
                                      ? SizedBox.shrink()
                                      : InkWell(
                                          onTap: customTextFields <= 2
                                              ? null
                                              : () {
                                                  customTextControllers.last.dispose();
                                                  customTextControllers.removeLast();
                                                  setState(() =>
                                                      customTextFields = customTextFields - 1);
                                                },
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  color: customTextFields <= 2
                                                      ? AppColors.disabled
                                                      : AppColors.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(AppRadii.button)),
                                              child: Icon(Icons.remove,
                                                  size: 30, color: AppColors.background)),
                                        ),
                                ],
                              ),
                              InkWell(
                                onTap: (selectedSurvey == 1 &&
                                            customTextControllers.any((c) => c.text.isEmpty)) ||
                                        chatState.surveyController.text.isEmpty
                                    ? null
                                    : () async {
                                        await chatState.sendMessage(
                                            userState.user!.id,
                                            selectedSurvey == 0
                                                ? ["Yes", "No", "Maybe"]
                                                : customTextControllers.map((v) => v.text).toList(),
                                            chatState.surveyController.text);
                                        chatState.surveyController.clear();
                                        customTextControllers.forEachIndexed((i, c) => c.dispose());
                                        setState(() {
                                          selectedSurvey = 0;
                                          createSurvey = false;
                                          customTextControllers =
                                              List<TextEditingController>.generate(
                                                  2,
                                                  (index) => TextEditingController()
                                                    ..addListener(() => setState(() {})));
                                          customTextFields = 2;
                                        });
                                      },
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 25),
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: (selectedSurvey == 1 &&
                                                    customTextControllers
                                                        .any((c) => c.text.isEmpty)) ||
                                                chatState.surveyController.text.isEmpty
                                            ? AppColors.disabled
                                            : AppColors.primary,
                                        borderRadius: BorderRadius.circular(AppRadii.button)),
                                    child: Text('Create',
                                        style:
                                            TextStyle(fontSize: 16, color: AppColors.background))),
                              ),
                            ]),
                          ],
                        ),
                      )),
                ]
              ],
            ),
    );
  }
}
