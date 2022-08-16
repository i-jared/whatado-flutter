import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/providers/graphql/group_provider.dart';
import 'package:whatado/screens/profile/group_details.dart';
import 'package:whatado/state/user_state.dart';

class GroupListItem extends StatefulWidget {
  final Group group;
  final bool member;
  final bool requested;
  final bool showButton;
  final bool showRequest;
  final bool noPadding;
  GroupListItem({
    required this.group,
    this.requested = false,
    this.member = false,
    this.showButton = false,
    this.showRequest = false,
    this.noPadding = false,
  });
  @override
  State<StatefulWidget> createState() => _GroupListItemState();
}

class _GroupListItemState extends State<GroupListItem> {
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
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => GroupDetails(group: widget.group))),
      child: Row(
        children: [
          widget.showRequest && widget.group.requested.length > 0
              ? Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: AppColors.primary),
                )
              : SizedBox(width: widget.noPadding ? 0 : 24),
          Container(
              height: 60,
              width: 60,
              child: CachedNetworkImage(imageUrl: widget.group.icon.url)),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              widget.group.name,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (widget.showButton)
            Container(
                width: 75,
                height: 35,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    widget.member
                        ? Colors.grey[400]
                        : requested
                            ? Colors.grey[400]
                            : AppColors.secondary,
                  )),
                  onPressed: requested || loading
                      ? null
                      : () async {
                          setState(() => loading = true);
                          final provider = GroupGqlProvider();
                          await provider.requestGroup(widget.group.id);
                          await userState.updateGroupRequest(widget.group);
                          setState(() {
                            requested = true;
                            loading = false;
                          });
                        },
                  child: loading
                      ? Container(
                          height: 20,
                          width: 20,
                          child: Center(
                              child: CircularProgressIndicator(color: Colors.white)))
                      : Text(
                          widget.member
                              ? 'member'
                              : requested
                                  ? 'pending'
                                  : 'add+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          )),
                ))
        ],
      ),
    );
  }
}
