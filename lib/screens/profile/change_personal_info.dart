import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/general/generic_page.dart';
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
          disabled: loading,
          title: 'Personal Information',
          onSave: () async {
            setState(() => loading = true);
            final provider = UserGqlProvider();
            final result = await provider.updateUser(
                UserFilterInput(phone: phoneController.text, name: nameController.text));
            if (result.ok) {
              await userState.getUser();
              setState(() => loading = false);
              Navigator.pop(context);
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
              child: MyTextField(hintText: 'Full Name', controller: nameController),
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
