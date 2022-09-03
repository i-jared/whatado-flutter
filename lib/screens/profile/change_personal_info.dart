import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';
import 'package:whatado/widgets/input/labeled_outline_text_field.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class ChangePersonalInfo extends StatefulWidget {
  final User user;
  ChangePersonalInfo({required this.user});
  @override
  _ChangePersonalInfoState createState() => _ChangePersonalInfoState();
}

class _ChangePersonalInfoState extends State<ChangePersonalInfo> {
  late final TextEditingController nameController;
  late final TextEditingController phoneController;

  late bool loading;

  @override
  void initState() {
    super.initState();
    loading = false;
    nameController = TextEditingController();
    phoneController = TextEditingController();
    nameController.text = widget.user.name;
    phoneController.text = widget.user.phone;
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return GenericPage(
      appBar: SavingAppBar(
          disabled: loading || nameController.text.isEmpty,
          title: 'Personal Info',
          onSave: () async {
            setState(() => loading = true);
            final provider = UserGqlProvider();
            final result = await provider.updateUser(UserFilterInput(name: nameController.text));
            if (result.ok) {
              await userState.getUser();
              setState(() => loading = false);
              BotToast.showText(text: 'Successfully updated name.');
              Navigator.pop(context);
            } else {
              BotToast.showText(text: 'Problem updating name. Please try again later.');
            }
          }),
      body: Form(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: LabeledOutlineTextField(
                controller: nameController,
                label: 'Full Name',
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 20.0),
            //   child: MyTextField(
            //       hintText: 'Phone Number', controller: phoneController),
            // ),
          ],
        ),
      )),
    );
  }
}
