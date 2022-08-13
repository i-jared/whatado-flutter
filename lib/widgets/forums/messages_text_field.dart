import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/forum.dart';
import 'package:whatado/state/chat_state.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class MessagesTextField extends StatefulWidget {
  final Forum forum;
  MessagesTextField({required this.forum});
  @override
  State<StatefulWidget> createState() => _MessagesTextFieldState();
}

class _MessagesTextFieldState extends State<MessagesTextField> {
  late int? selectedSurvey = 0;
  late List<Widget> customTextFields;
  late List<TextEditingController> customTextControllers;

  initState() {
    super.initState();
    customTextControllers = [TextEditingController(), TextEditingController()];
    customTextFields = [
      MyTextField(
        hintText: 'New Answer...',
        controller: customTextControllers[0],
      ),
      MyTextField(
        hintText: 'New Answer...',
        controller: customTextControllers[1],
      )
    ];
  }

  late bool createSurvey = false;
  final double height = 50.0;
  @override
  Widget build(BuildContext context) {
    final chatState = Provider.of<ChatState>(context);
    final userState = Provider.of<UserState>(context);
    print('jcl ${userState.user?.id} ${widget.forum.ownerId}');
    return Container(
      color: Colors.grey[50],
      child: widget.forum.chatDisabled && userState.user?.id != widget.forum.ownerId
          ? SizedBox(
              height: height,
              child: Center(
                  child: Text('chat is disabled for this group',
                      style: TextStyle(fontSize: 17))))
          : Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                          setState(() => createSurvey = !createSurvey);
                        },
                        icon: Icon(createSurvey
                            ? Icons.cancel_outlined
                            : Icons.add_circle_outline),
                        color: AppColors.primary),
                    Expanded(
                      child: TextFormField(
                        controller: chatState.textController,
                        textCapitalization: TextCapitalization.sentences,
                        maxLines: null,
                        toolbarOptions:
                            ToolbarOptions(copy: true, paste: true, selectAll: true),
                        onTap: () {
                          setState(() => createSurvey = false);
                        },
                        decoration: InputDecoration(
                            hintText: "Type your message...", border: InputBorder.none),
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    chatState.textController.text.isNotEmpty
                        ? Container(
                            height: height,
                            width: height,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(height / 2.0),
                            ),
                            child: IconButton(
                                onPressed: () => userState.user == null
                                    ? null
                                    : chatState.sendMessage(userState.user!.id),
                                icon: Icon(Icons.send, color: Colors.white, size: 30)),
                          )
                        : SizedBox.shrink(),
                    SizedBox(width: 30),
                  ],
                ),
                if (createSurvey)
                  Stack(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          height: 350,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                Align(
                                  child: Text(
                                    'Create Survey',
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  alignment: Alignment.topCenter,
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text('Question: ',
                                        style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: MyTextField(
                                            controller: chatState.surveyController,
                                            hintText: 'Ask question here...'))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: 0,
                                      groupValue: selectedSurvey,
                                      onChanged: (val) =>
                                          setState(() => selectedSurvey = val),
                                    ),
                                    Text('Yes/No/Maybe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: 1,
                                      groupValue: selectedSurvey,
                                      onChanged: (val) =>
                                          setState(() => selectedSurvey = val),
                                    ),
                                    Text('Custom Text'),
                                  ],
                                ),
                                if (selectedSurvey == 1) ...customTextFields,
                                if (selectedSurvey == 1)
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              customTextControllers
                                                  .add(TextEditingController());
                                              customTextFields.add(MyTextField(
                                                hintText: 'New Answer...',
                                                controller: customTextControllers.last,
                                              ));
                                              setState(() {});
                                            },
                                            color: AppColors.primary,
                                            icon: Icon(Icons.add_circle_outline)),
                                        if (customTextFields.length > 2)
                                          SizedBox(width: 10),
                                        if (customTextFields.length > 2)
                                          IconButton(
                                              onPressed: () {
                                                customTextFields.removeLast();
                                                customTextControllers.removeLast();
                                                setState(() {});
                                              },
                                              color: AppColors.primary,
                                              icon: Icon(Icons.cancel_outlined)),
                                      ]),
                              ],
                            ),
                          )),
                      if (chatState.surveyController.text.isNotEmpty &&
                          (selectedSurvey == 1
                              ? !customTextControllers.any((c) => c.text.isEmpty)
                              : true))
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: () async {
                                await chatState.sendMessage(
                                    userState.user!.id,
                                    selectedSurvey == 0
                                        ? ["Yes", "No", "Maybe"]
                                        : customTextControllers
                                            .map((v) => v.text)
                                            .toList(),
                                    chatState.surveyController.text);
                                chatState.surveyController.clear();
                                setState(() {
                                  selectedSurvey = 0;
                                  createSurvey = false;
                                  customTextControllers = [
                                    TextEditingController(),
                                    TextEditingController()
                                  ];
                                  customTextFields = [
                                    MyTextField(
                                      hintText: 'New Answer...',
                                      controller: customTextControllers[0],
                                    ),
                                    MyTextField(
                                      hintText: 'New Answer...',
                                      controller: customTextControllers[1],
                                    )
                                  ];
                                });
                              },
                              color: AppColors.primary,
                              icon: Icon(Icons.check_circle),
                              iconSize: 45,
                            ))
                    ],
                  )
              ],
            ),
    );
  }
}
