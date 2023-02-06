part of 'season_episodes_cubit.dart';

@immutable
abstract class SeasonEpisodesState {}

class SeasonEpisodesInitial extends SeasonEpisodesState {}

class SeasonEpisodesLoadInProgress extends SeasonEpisodesState {}

class SeasonEpisodesILoadSuccess extends SeasonEpisodesState {
  SeasonEpisodesILoadSuccess({
    required this.seasons,
  });

  final List<SeasonModel> seasons;
}

class SeasonEpisodesLoadFailure extends SeasonEpisodesState {}
