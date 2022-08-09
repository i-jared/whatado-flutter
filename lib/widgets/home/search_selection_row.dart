import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/state/search_state.dart';
import 'package:whatado/widgets/home/search_selection_button.dart';

class SearchSelectionRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);
    return Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SearchSelectionButton(
                text: 'Events',
                onTap: () => searchState.selectedSearchType = 0,
                selected: searchState.selectedSearchType == 0),
            SearchSelectionButton(
                text: 'People',
                onTap: () => searchState.selectedSearchType = 1,
                selected: searchState.selectedSearchType == 1),
            SearchSelectionButton(
                text: 'Groups',
                onTap: () => searchState.selectedSearchType = 2,
                selected: searchState.selectedSearchType == 2),
            SearchSelectionButton(
                text: 'Contacts',
                onTap: () => searchState.selectedSearchType = 3,
                selected: searchState.selectedSearchType == 3),
          ],
        ));
  }
}
