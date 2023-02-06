import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required this.tsdbRepository,
  }) : super(SearchInitial()) {
    on<SearchFetched>(_onSearchFetched);
  }

  final TsdbRepository tsdbRepository;

  Future<void> _onSearchFetched(
    SearchFetched event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(SearchLoadInProgress());

      final searchResponse = await tsdbRepository.getTvShowsBySearch(
        event.query,
      );

      emit(SearchLoadSuccess(tvShowsList: searchResponse));
    } catch (e) {
      emit(SearchLoadFailure());
    }
  }
}
