part of 'home_bloc.dart';

@immutable
class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoadInProgress extends HomeState {}

class HomeLoadSuccess extends HomeState {
  HomeLoadSuccess({
    required this.tvShowsList,
    this.currentPage = 1,
  });

  final List<TvShowModel> tvShowsList;
  final int currentPage;

  @override
  List<Object?> get props => [tvShowsList, currentPage];
}

class HomeLoadFailure extends HomeState {}
