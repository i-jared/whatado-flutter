import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatado/graphql/queries_graphql_api.dart';
import 'package:whatado/graphql/queries_graphql_api.graphql.dart';
import 'package:whatado/state/home_state.dart';
import 'package:whatado/widgets/input/bottom_sheet_list.dart';

class SortEventsBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    String getText(SortType type) {
      if (type == SortType.newest) {
        return "New Events";
      } else {
        return "Upcoming";
      }
    }

    IconData getIcon(SortType type) {
      if (type == SortType.newest) {
        return homeState.sortType == type
            ? Icons.new_releases
            : Icons.new_releases_outlined;
      } else {
        return homeState.sortType == type
            ? Icons.calendar_today
            : Icons.calendar_today_outlined;
      }
    }

    void onPressed(SortType type) {
      homeState.sortType = type;
      homeState.allEventsRefresh();
      Navigator.pop(context);
    }

    List<Widget> items = SortType.values
        .map(
          (type) => type == SortType.artemisUnknown
              ? SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                    onTap: () => onPressed(type),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Color(0xfffff2e2),
                                borderRadius: BorderRadius.circular(15)),
                            width: 60,
                            height: 60,
                            child:
                                Icon(getIcon(type), size: 30, color: Color(0xfff7941d))),
                        SizedBox(width: 20),
                        Text(getText(type), style: TextStyle(fontSize: 20)),
                        Spacer(),
                        if (homeState.sortType == type)
                          Icon(Icons.check_circle_outline_rounded,
                              color: Color(0xfff7941d), size: 40)
                      ],
                    ),
                  ),
                ),
        )
        .toList();

    return BottomSheetList(items: items);
  }
}
