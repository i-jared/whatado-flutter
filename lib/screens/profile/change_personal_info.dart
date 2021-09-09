import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/models/user.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/input/my_text_field.dart';

class ChangePersonalInfo extends StatefulWidget {
  @override
  _ChangePersonalInfoState createState() => _ChangePersonalInfoState();
}

class _ChangePersonalInfoState extends State<ChangePersonalInfo> {
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;

  late final User user;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();

    user = User(
      id: 1,
      email: 'jaredclambert@gmail.com',
      imageUrl:
          'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
      name: 'Jared Lambert',
      interests: ['Cooking', 'Games', 'Health', 'Traveling', 'Photography']
          .map((name) => Interest(id: 1, title: name))
          .toList(),
      bio: lorem(words: 20, paragraphs: 1),
      photoUrls: [
        'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
        'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
        'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
        'https://i.guim.co.uk/img/media/7f461faef1a1f1601fca37eb6e865e248ca7f791/50_0_1133_680/master/1133.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=75e943e1cc536746aa58839c49175512',
      ],
    );
    nameController.text = user.name;
    emailController.text = user.email;
    phoneController.text = '43522534893';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SavingAppBar(title: 'Personal Information', onSave: () => null),
      body: Form(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MyTextField(
                  hintText: 'Full Name', controller: nameController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MyTextField(
                hintText: 'Email',
                controller: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MyTextField(
                  hintText: 'Phone Number', controller: phoneController),
            ),
          ],
        ),
      )),
    );
  }
}
