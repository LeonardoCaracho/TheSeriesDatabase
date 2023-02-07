part of 'search_bloc.dart';

@immutable
class SearchEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SearchFetched extends SearchEvent {
  SearchFetched({required this.query});

  final String query;

  @override
  List<Object?> get props => [query];
}

class SearchCleaned extends SearchEvent {}
