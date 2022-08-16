import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geojson/geojson.dart';
import 'package:geopoint/geopoint.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group_icon.dart';
import 'package:whatado/providers/graphql/group_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/state/user_state.dart';
import 'package:whatado/widgets/appbars/saving_app_bar.dart';
import 'package:whatado/widgets/input/my_text_field.dart';
import 'package:whatado/widgets/users/user_list_item.dart';

class CreateGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  late List<EventUser> selectedFriends = [];
  late TextEditingController groupNameController = TextEditingController();
  late TextEditingController groupLocationController = TextEditingController();
  late bool loading = false;
  late bool iconsLoading = true;
  late bool changeIcon = false;
  late bool screened = true;
  GeoJsonPoint? coordinates;
  List<GroupIcon>? groupIcons;
  GroupIcon? selectedIcon;

  @override
  void initState() {
    super.initState();
    groupNameController.addListener(() => setState(() {}));
    groupLocationController.addListener(() => setState(() {}));
    init();
  }

  Future<void> init() async {
    final provider = GroupGqlProvider();
    final result = await provider.groupIcons();
    setState(() {
      groupIcons = result.data;
      iconsLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final friends = userState.user?.friends;
    return Container(
        color: Colors.grey[50],
        child: SafeArea(
          child: Scaffold(
            appBar: SavingAppBar(
                title: 'Create Group',
                disabled: loading ||
                    coordinates == null ||
                    groupLocationController.text.isEmpty ||
                    selectedIcon == null ||
                    groupNameController.text.isEmpty ||
                    selectedFriends.isEmpty,
                buttonTitle: 'CREATE',
                onSave: () async {
                  setState(() => loading = true);
                  final response = await GroupGqlProvider().createGroup(GroupInput(
                      name: groupNameController.text,
                      location: coordinates!,
                      screened: screened,
                      groupIconId: selectedIcon!.id,
                      owner: userState.user!.id,
                      userIds: [
                        userState.user!.id,
                        ...selectedFriends.map((u) => u.id)
                      ]));
                  if (response.ok) {
                    await userState.getUser();
                  }
                  setState(() => loading = false);
                  Navigator.pop(context);
                }),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    MyTextField(
                      hintText: 'Group Name',
                      controller: groupNameController,
                      validator: (val) =>
                          (val?.isEmpty ?? true) ? 'please enter a name' : null,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Switch(
                          onChanged: (newVal) => setState(() => screened = newVal),
                          value: screened,
                          activeColor: AppColors.primary,
                        ),
                        SizedBox(width: 20),
                        Text(screened ? 'Screen Group Members' : 'Anyone Can Join'),
                      ],
                    ),
                    SizedBox(height: 20),
                    if (selectedIcon != null) ...[
                      Row(
                        children: [
                          Container(
                              height: 75,
                              width: 75,
                              child: CachedNetworkImage(imageUrl: selectedIcon!.url)),
                          SizedBox(width: 20),
                          TextButton(
                              onPressed: () => setState(() => changeIcon = !changeIcon),
                              child: Text(changeIcon ? 'Hide Icons' : 'Change Icon'))
                        ],
                      ),
                      SizedBox(height: 20)
                    ],
                    if (iconsLoading) Center(child: CircularProgressIndicator()),
                    if (!iconsLoading && (selectedIcon == null || changeIcon))
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: groupIcons
                                    ?.map((i) => InkWell(
                                          onTap: () => setState(() => selectedIcon = i),
                                          child: Container(
                                            padding:
                                                EdgeInsets.symmetric(horizontal: 8.0),
                                            height: 75,
                                            width: 75,
                                            child: CachedNetworkImage(
                                              imageUrl: i.url,
                                            ),
                                          ),
                                        ))
                                    .toList() ??
                                [Text('no icons available')],
                          )),
                    SizedBox(height: 20),
                    TypeAheadFormField(
                      direction: AxisDirection.up,
                      noItemsFoundBuilder: (context) => SizedBox.shrink(),
                      onSuggestionSelected: (Map<String, dynamic> place) async {
                        groupLocationController.text = place['description'];
                        final location =
                            await placesService.placeDetails(place['place_id']);
                        if (location['lat'] == null || location['lng'] == null) {
                          // TODO make an error here somehow.
                          // Invalidate location entry
                        }
                        coordinates = GeoJsonPoint(
                            geoPoint: GeoPoint(
                                latitude: location['lat'], longitude: location['lng']));
                      },
                      suggestionsCallback: (String pattern) async {
                        final result = await placesService.findPlace(
                            pattern, userState.user?.location);
                        return result;
                      },
                      itemBuilder: (context, Map<String, dynamic> place) =>
                          ListTile(title: Text(place['description'])),
                      textFieldConfiguration: TextFieldConfiguration(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Enter location',
                          hintStyle: TextStyle(fontSize: 13),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                        controller: groupLocationController,
                      ),
                    ),
                    SizedBox(height: 20),
                    if (friends == null || friends.isEmpty)
                      Expanded(child: Center(child: Text('no friends'))),
                    if (friends != null && friends.isNotEmpty)
                      Expanded(
                        child: ListView.builder(
                            itemCount: friends.length,
                            itemBuilder: (context, i) {
                              EventUser friend = friends[i];
                              return InkWell(
                                onTap: () {
                                  if (selectedFriends.contains(friend)) {
                                    selectedFriends.remove(friend);
                                  } else {
                                    selectedFriends.add(friend);
                                  }
                                  setState(() => selectedFriends = selectedFriends);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: IgnorePointer(
                                      child: UserListItem(
                                    friend,
                                    selected: selectedFriends.contains(friend),
                                  )),
                                ),
                              );
                            }),
                      )
                  ],
                )),
          ),
        ));
  }
}
