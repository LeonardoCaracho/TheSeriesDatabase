part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchFetched extends SearchEvent {
  SearchFetched({required this.query});

  final String query;
}

class SearchCleaned extends SearchEvent {}
