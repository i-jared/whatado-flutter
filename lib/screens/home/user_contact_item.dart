import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/user_state.dart';

class UserContactItem extends StatefulWidget {
  final EventUser user;
  final bool friends;
  final bool requested;
  UserContactItem(this.user, {this.friends = false, this.requested = false});

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
                    child: Text(widget.user.name.substring(0, 2),
                        style: TextStyle(fontSize: 20)))),
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
            onPressed: widget.friends || requested || loading
                ? null
                : () async {
                    setState(() => loading = true);
                    final provider = UserGqlProvider();
                    await provider.requestFriend(widget.user.id);
                    await userState.updateFriendRequest(widget.user);
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
                    widget.friends
                        ? 'friends'
                        : requested
                            ? 'pending'
                            : 'add+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    )),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              widget.friends
                  ? Colors.grey[400]
                  : requested
                      ? Colors.grey[400]
                      : AppColors.secondary,
            )),
          ),
        )
      ],
    ));
  }
}
