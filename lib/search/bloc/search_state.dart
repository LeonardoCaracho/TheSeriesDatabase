part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoadInProgress extends SearchState {}

class SearchLoadSuccess extends SearchState {
  SearchLoadSuccess({
    required this.tvShowsList,
  });

  final List<TvShowModel> tvShowsList;
}

class SearchLoadFailure extends SearchState {}
