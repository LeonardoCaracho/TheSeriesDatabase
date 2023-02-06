part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadInProgress extends HomeState {}

class HomeLoadSuccess extends HomeState {
  HomeLoadSuccess({
    required this.tvShowsList,
    this.currentPage = 1,
  });

  final List<TvShowModel> tvShowsList;
  final int currentPage;
}

class HomeLoadFailure extends HomeState {}
