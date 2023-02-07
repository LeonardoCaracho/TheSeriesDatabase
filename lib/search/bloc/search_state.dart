part of 'search_bloc.dart';

@immutable
class SearchState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoadInProgress extends SearchState {}

class SearchLoadSuccess extends SearchState {
  SearchLoadSuccess({
    required this.tvShowsList,
  });

  final List<TvShowModel> tvShowsList;

  @override
  List<Object?> get props => [tvShowsList];
}

class SearchLoadFailure extends SearchState {}
