import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/my_contact.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/utils/logger.dart';

class NonUserContactItem extends StatefulWidget {
  final MyContact contact;
  final int? groupId;
  final int? eventId;
  NonUserContactItem(this.contact, {this.groupId, this.eventId});

  @override
  State<StatefulWidget> createState() => _NonUserContactItemState();
}

class _NonUserContactItemState extends State<NonUserContactItem> {
  late bool loading;
  late bool sent;
  @override
  void initState() {
    super.initState();
    loading = false;
    sent = widget.contact.referred;
  }

  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    return Container(
        child: Row(
      children: [
        widget.contact.thumbnail != null
            ? Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(image: MemoryImage(widget.contact.thumbnail!))),
              )
            : Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[400],
                ),
                child: Center(
                    child: Text(widget.contact.displayName.substring(0, 2),
                        style: TextStyle(fontSize: 20)))),
        SizedBox(width: 15),
        Expanded(
          child: Text(
            widget.contact.displayName,
            style: TextStyle(fontSize: 16),
            overflow: TextOverflow.fade,
          ),
        ),
        Container(
          width: 75,
          height: 35,
          child: TextButton(
            onPressed: widget.contact.phone == null || sent || loading
                ? null
                : () async {
                    setState(() => loading = true);
                    final provider = UserGqlProvider();
                    final result = await provider.createReferral(widget.contact.phone!,
                        eventId: widget.eventId, groupId: widget.groupId);
                    if (result.ok) {
                      searchState.updateReferrals(widget.contact.phone!);
                    } else {
                      BotToast.showText(text: 'Problem inviting contact. Please try again later.');
                    }
                    setState(() {
                      loading = false;
                      sent = result.ok;
                    });
                  },
            child: loading
                ? Container(
                    height: 20,
                    width: 20,
                    child: Center(child: CircularProgressIndicator(color: Colors.white)))
                : Text(sent ? 'sent' : 'invite+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    )),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              widget.contact.phone == null || sent ? Colors.grey[400] : AppColors.primary,
            )),
          ),
        )
      ],
    ));
  }
}
