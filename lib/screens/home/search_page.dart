import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/providers/graphql/user_provider.dart';
import 'package:whatado/screens/home/search_contacts.dart';
import 'package:whatado/screens/home/search_events.dart';
import 'package:whatado/screens/home/search_groups.dart';
import 'package:whatado/screens/home/search_users.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/widgets/appbars/search_page_search.dart';

class SearchPage extends StatefulWidget {
  @override
  _StateSearchPage createState() => _StateSearchPage();
}

class _StateSearchPage extends State<SearchPage> {
  Timer? debounce;
  late bool loading = false;
  late List<PublicUser>? users = [];
  late UserGqlProvider provider = UserGqlProvider();

  @override
  Widget build(BuildContext context) {
    final double itemWidth = (MediaQuery.of(context).size.width - 30) / 3;
    final searchState = Provider.of<SearchState>(context);
    final spacing = 15.0;
    return Container(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: searchState.selectedSearchType == 15 ? 0 : 15),
      child: Column(
        children: [
          SearchPageSearch(controller: searchState.searchController),
          SizedBox(height: spacing),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey[200], borderRadius: BorderRadius.circular(AppRadii.button)),
              ),
              AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  top: 3,
                  left: itemWidth * searchState.selectedSearchType + 3,
                  child: Container(
                    height: 54,
                    width: itemWidth - 6,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(AppRadii.button)),
                  )),
              Container(
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () => searchState.turnPage(0),
                        child: Container(
                            alignment: Alignment.center,
                            width: itemWidth,
                            height: 60,
                            child: Text('Events', style: getStyle(0, searchState)))),
                    InkWell(
                        onTap: () => searchState.turnPage(1),
                        child: Container(
                            alignment: Alignment.center,
                            width: itemWidth,
                            height: 60,
                            child: Text('People', style: getStyle(1, searchState)))),
                    InkWell(
                        onTap: () => searchState.turnPage(2),
                        child: Container(
                            alignment: Alignment.center,
                            width: itemWidth,
                            height: 60,
                            child: Text('Groups', style: getStyle(2, searchState))))
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: spacing),
          Expanded(
              child: PageView(
                  onPageChanged: (pageNo) => searchState.selectedSearchType = pageNo,
                  controller: searchState.searchPageController,
                  children: [SearchEvents(), SearchUsers(), SearchGroups()])),
        ],
      ),
    ));
  }

  TextStyle getStyle(int i, SearchState state) {
    return TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: state.selectedSearchType == i ? Colors.white : Colors.black);
  }
}
