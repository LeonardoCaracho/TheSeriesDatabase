import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

part 'season_episodes_state.dart';

class SeasonEpisodesCubit extends Cubit<SeasonEpisodesState> {
  SeasonEpisodesCubit({
    required this.repository,
  }) : super(SeasonEpisodesInitial());

  final TsdbRepository repository;

  Future<void> fetchTvShowSeasons(int tvShowId) async {
    try {
      emit(SeasonEpisodesLoadInProgress());

      final seasonsResponse = await repository.getTvShowSeasonsAndEpisodes(
        tvShowId,
      );

      emit(SeasonEpisodesILoadSuccess(seasons: seasonsResponse));
    } catch (e) {
      emit(SeasonEpisodesLoadFailure());
    }
  }
}
