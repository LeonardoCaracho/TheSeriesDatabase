import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/series_details/series_details.dart';

import '../../helpers/helpers.dart';

class _MockSeasonEpisodesCubit extends MockCubit<SeasonEpisodesState>
    implements SeasonEpisodesCubit {}

void main() {
  group('Content', () {
    late SeasonEpisodesCubit seasonEpisodesCubit;

    setUp(() {
      seasonEpisodesCubit = _MockSeasonEpisodesCubit();
      when(() => seasonEpisodesCubit.state).thenAnswer(
        (invocation) => SeasonEpisodesInitial(),
      );
    });

    testWidgets('should renders correctly', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpApp(
          BlocProvider.value(
            value: seasonEpisodesCubit,
            child: Content(tvShowModel: tvShowModelMock),
          ),
        );

        expect(find.byType(Content), findsOneWidget);
      });
    });

    testWidgets(
        'should show CircularProgressIndicator if SeasonEpisodesLoadInProgress',
        (tester) async {
      await mockNetworkImages(() async {
        when(() => seasonEpisodesCubit.state).thenAnswer(
          (invocation) => SeasonEpisodesLoadInProgress(),
        );
        await tester.pumpApp(
          BlocProvider.value(
            value: seasonEpisodesCubit,
            child: Content(tvShowModel: tvShowModelMock),
          ),
        );

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      });
    });

    testWidgets(
        'should show SeasonsSessionsWidget if SeasonEpisodesLoadSuccess',
        (tester) async {
      await mockNetworkImages(() async {
        when(() => seasonEpisodesCubit.state).thenAnswer(
          (invocation) => SeasonEpisodesLoadSuccess(
            seasons: seasonEpisodesMock,
          ),
        );
        await tester.pumpApp(
          BlocProvider.value(
            value: seasonEpisodesCubit,
            child: Content(tvShowModel: tvShowModelMock),
          ),
        );

        expect(find.byType(SeasonsSessionsWidget), findsOneWidget);
      });
    });

    testWidgets(
        'should not show SeasonsSessionsWidget if SeasonEpisodesLoadFailure',
        (tester) async {
      await mockNetworkImages(() async {
        when(() => seasonEpisodesCubit.state).thenAnswer(
          (invocation) => SeasonEpisodesLoadFailure(),
        );
        await tester.pumpApp(
          BlocProvider.value(
            value: seasonEpisodesCubit,
            child: Content(tvShowModel: tvShowModelMock),
          ),
        );

        expect(find.byType(SeasonsSessionsWidget), findsNothing);
      });
    });
  });
}
