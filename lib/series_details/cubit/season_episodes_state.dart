part of 'season_episodes_cubit.dart';

@immutable
class SeasonEpisodesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SeasonEpisodesInitial extends SeasonEpisodesState {}

class SeasonEpisodesLoadInProgress extends SeasonEpisodesState {}

class SeasonEpisodesLoadSuccess extends SeasonEpisodesState {
  SeasonEpisodesLoadSuccess({
    required this.seasons,
  });

  final List<SeasonModel> seasons;

  @override
  List<Object?> get props => [seasons];
}

class SeasonEpisodesLoadFailure extends SeasonEpisodesState {}
