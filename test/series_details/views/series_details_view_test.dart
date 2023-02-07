import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/home/home.dart';
import 'package:the_series_db/series_details/series_details.dart';

import '../../helpers/helpers.dart';

class _MockSeasonEpisodesCubit extends MockCubit<SeasonEpisodesState> implements SeasonEpisodesCubit {}

class FakeHomeEvent extends Fake implements HomeEvent {}

class FakeHomeState extends Fake implements HomeState {}

void main() {
  late SeasonEpisodesCubit seasonEpisodesCubit;

  group('SeriesDetailsView', () {
    setUp(() {
      seasonEpisodesCubit = _MockSeasonEpisodesCubit();
      when(() => seasonEpisodesCubit.state).thenAnswer(
        (invocation) => SeasonEpisodesInitial(),
      );
    });

    group('renders', () {
      testWidgets('should renders content', (tester) async {
        await mockNetworkImages(() async {
          when(
            () => seasonEpisodesCubit.fetchTvShowSeasons(any()),
          ).thenAnswer((invocation) => Future<void>.value());

          await tester.pumpApp(
            BlocProvider.value(
              value: seasonEpisodesCubit,
              child: SeriesDetailsView(tvShowModel: tvShowModelMock),
            ),
          );

          expect(find.byType(Content), findsOneWidget);
        });
      });

      testWidgets('should fetchTvShowSeasons when render', (tester) async {
        await mockNetworkImages(() async {
          when(
            () => seasonEpisodesCubit.fetchTvShowSeasons(any()),
          ).thenAnswer((invocation) => Future<void>.value());

          await tester.pumpApp(
            BlocProvider.value(
              value: seasonEpisodesCubit,
              child: SeriesDetailsView(tvShowModel: tvShowModelMock),
            ),
          );

          verify(
            () => seasonEpisodesCubit.fetchTvShowSeasons(any()),
          ).called(1);
        });
      });
    });
  });
}
