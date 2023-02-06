import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.repository,
  }) : super(HomeInitial()) {
    on<HomeStarted>(_onHomeStarted);
    on<HomeFetched>(_onHomeFetched);
  }
  final TsdbRepository repository;

  Future<void> _onHomeStarted(
    HomeStarted event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoadInProgress());

    try {
      final tvShowsResponse = await repository.getTvShows(1);

      emit(HomeLoadSuccess(tvShowsList: tvShowsResponse));
    } catch (e) {
      emit(HomeLoadFailure());
    }
  }

  Future<void> _onHomeFetched(
    HomeFetched event,
    Emitter<HomeState> emit,
  ) async {
    final previousState = state;

    try {
      if (previousState is HomeLoadSuccess) {
        // emit(HomeLoadInProgress());

        final nextPage = previousState.currentPage + 1;
        final tvShowsResponse = await repository.getTvShows(nextPage);

        emit(
          HomeLoadSuccess(
            tvShowsList: previousState.tvShowsList..addAll(tvShowsResponse),
            currentPage: nextPage,
          ),
        );
      }
    } catch (e) {
      emit(HomeLoadFailure());
    }
  }
}
