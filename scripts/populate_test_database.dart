import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/providers/graphql/create_event_query.dart';
import 'package:whatado/providers/graphql/create_interest_query.dart';
import 'package:whatado/providers/graphql/register_query.dart';

void main(List<String> args) {
  // Create Interests
  final createInterestQuery = CreateInterestGqlQuery();
  createInterestQuery.create(
      interestInput: InterestInput(
    description: '',
    peopleInterestedIds: [],
    relatedEventsIds: [],
    title: 'bball',
  ));
  createInterestQuery.create(
      interestInput: InterestInput(
    description: '',
    peopleInterestedIds: [],
    relatedEventsIds: [],
    title: 'chess',
  ));
  createInterestQuery.create(
      interestInput: InterestInput(
    description: '',
    peopleInterestedIds: [],
    relatedEventsIds: [],
    title: 'hiking',
  ));
  createInterestQuery.create(
      interestInput: InterestInput(
    description: '',
    peopleInterestedIds: [],
    relatedEventsIds: [],
    title: 'movies',
  ));

  // Create Events
  final createEventQuery = CreateEventGqlQuery();
  createEventQuery.create(
      eventInput: EventInput(
    creatorId: 1,
    description: lorem(paragraphs: 1, words: 20),
    filterAge: "filterAge",
    filterGender: Gender.both,
    filterLocation: "2500 Pennsylvania Ave.",
    filterRadius: 5,
    location: "2500 Pennsylvania Ave.",
    relatedInterestsIds: [],
    time: DateTime.now().add(Duration(days: 17)),
    title: lorem(paragraphs: 1, words: 3),
    pictureUrl:
        "https://firebasestorage.googleapis.com/v0/b/whatado.appspot.com/o/test%2Fimage1.jpg?alt=media&token=84ff5779-2872-4caf-b6a5-97f538722ea3",
  ));
  createEventQuery.create(
      eventInput: EventInput(
    creatorId: 1,
    description: lorem(paragraphs: 1, words: 20),
    filterAge: "filterAge",
    filterGender: Gender.both,
    filterLocation: "2500 Pennsylvania Ave.",
    filterRadius: 5,
    location: "2500 Pennsylvania Ave.",
    relatedInterestsIds: [],
    time: DateTime.now().add(Duration(days: 7)),
    title: lorem(paragraphs: 1, words: 3),
    pictureUrl:
        "https://firebasestorage.googleapis.com/v0/b/whatado.appspot.com/o/test%2Fimage2.jpg?alt=media&token=76fd5484-08f8-427f-a337-b7bc9bab8dc7",
  ));
  createEventQuery.create(
      eventInput: EventInput(
    creatorId: 1,
    description: lorem(paragraphs: 1, words: 20),
    filterAge: "filterAge",
    filterGender: Gender.both,
    filterLocation: "2500 Pennsylvania Ave.",
    filterRadius: 5,
    location: "2500 Pennsylvania Ave.",
    relatedInterestsIds: [],
    time: DateTime.now().add(Duration(days: 2)),
    title: lorem(paragraphs: 1, words: 3),
    pictureUrl:
        "https://firebasestorage.googleapis.com/v0/b/whatado.appspot.com/o/test%2Fimage3.jpg?alt=media&token=803cb373-3119-4d2b-820f-c95e0083f620",
  ));
  createEventQuery.create(
      eventInput: EventInput(
    creatorId: 1,
    description: lorem(paragraphs: 1, words: 20),
    filterAge: "filterAge",
    filterGender: Gender.both,
    filterLocation: "2500 Pennsylvania Ave.",
    filterRadius: 5,
    location: "2500 Pennsylvania Ave.",
    relatedInterestsIds: [],
    time: DateTime.now().add(Duration(days: 0)),
    title: lorem(paragraphs: 1, words: 3),
    pictureUrl:
        "https://firebasestorage.googleapis.com/v0/b/whatado.appspot.com/o/test%2Fimage4.jpg?alt=media&token=e6e22fc5-7045-4284-9239-f945df0637d9",
  ));

  // Create User
  RegisterGqlQuery().register(
      email: "jared@test.com", password: "123456", name: "Huge Puppy");

  // Create Forums and Chats
  final createForumQuery = CreateForumQuery();
  createForumQuery.create();
}
