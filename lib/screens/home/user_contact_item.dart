import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/providers/graphql/group_provider.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/user_state.dart';

class UserContactItem extends StatefulWidget {
  final PublicUser user;
  final bool accepted;
  final bool requested;
  final bool groupRequest;
  final Group? group;
  UserContactItem(this.user,
      {this.accepted = false, this.requested = false, this.groupRequest = false, this.group});

  @override
  State<StatefulWidget> createState() => _UserContactItemState();
}

class _UserContactItemState extends State<UserContactItem> {
  late bool loading;
  late bool requested;
  @override
  void initState() {
    super.initState();
    loading = false;
    requested = widget.requested;
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return Container(
        child: Row(
      children: [
        widget.user.photoUrls.isNotEmpty
            ? Container(
                height: 50,
                width: 50,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: CachedNetworkImage(imageUrl: widget.user.photoUrls.first),
              )
            : Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[400],
                ),
                child: Center(
                    child: Text(widget.user.name.substring(0, 2), style: TextStyle(fontSize: 20)))),
        SizedBox(width: 15),
        Expanded(
          child: Text(
            widget.user.name,
            style: TextStyle(fontSize: 16),
            overflow: TextOverflow.fade,
          ),
        ),
        Container(
          width: 75,
          height: 35,
          child: TextButton(
            onPressed: widget.accepted || requested || loading
                ? null
                : () async {
                    setState(() => loading = true);
                    if (widget.groupRequest && widget.group != null) {
                      final provider = GroupGqlProvider();
                      await provider.updateGroup(GroupFilterInput(
                        id: widget.group!.id,
                        userIds: [...widget.group!.users.map((u) => u.id), widget.user.id],
                      ));
                      await userState.updateGroupMembers(widget.group!, widget.user);
                    } else {
                      final provider = UserGqlProvider();
                      await provider.requestFriend(widget.user.id);
                      await userState.updateFriendRequest(widget.user);
                    }
                    setState(() {
                      requested = true;
                      loading = false;
                    });
                  },
            child: loading
                ? Container(
                    height: 20,
                    width: 20,
                    child: Center(child: CircularProgressIndicator(color: Colors.white)))
                : Text(
                    widget.accepted
                        ? widget.groupRequest
                            ? 'member'
                            : 'friends'
                        : requested
                            ? 'pending'
                            : 'add+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    )),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              widget.accepted
                  ? Colors.grey[400]
                  : requested
                      ? Colors.grey[400]
                      : AppColors.primary,
            )),
          ),
        )
      ],
    ));
  }
}
