import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/home/home.dart';

import '../../helpers/helpers.dart';

class _MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {
}

class FakeHomeEvent extends Fake implements HomeEvent {}

class FakeHomeState extends Fake implements HomeState {}

void main() {
  late HomeBloc homeBloc;

  group('HomeView', () {
    setUp(() {
      homeBloc = _MockHomeBloc();
      when(() => homeBloc.state).thenAnswer((invocation) => HomeInitial());
    });

    group('renders', () {
      testWidgets('should renders correct header title', (tester) async {
        await tester.pumpApp(
          BlocProvider.value(
            value: homeBloc,
            child: const HomeView(),
          ),
        );

        expect(find.text('TheSeriesDataBase'), findsOneWidget);
      });

      testWidgets(
          'should renders circular progress indicador when HomeLoadInProgress',
          (
        tester,
      ) async {
        await mockNetworkImages(() async {
          when(() => homeBloc.state).thenAnswer(
            (invocation) => HomeLoadInProgress(),
          );

          await tester.pumpApp(
            BlocProvider.value(
              value: homeBloc,
              child: const HomeView(),
            ),
          );

          expect(find.byType(CircularProgressIndicator), findsOneWidget);
        });
      });

      testWidgets('should renders gridview when HomeLoadSuccess', (
        tester,
      ) async {
        await mockNetworkImages(() async {
          when(() => homeBloc.state).thenAnswer(
            (invocation) => HomeLoadSuccess(
              tvShowsList: [tvShowModelMock],
            ),
          );

          await tester.pumpApp(
            BlocProvider.value(
              value: homeBloc,
              child: const HomeView(),
            ),
          );

          expect(find.byKey(const Key('homeViewGridView')), findsOneWidget);
        });
      });

      testWidgets('should not render gridview when is not HomeLoadSuccess', (
        tester,
      ) async {
        when(() => homeBloc.state).thenAnswer(
          (invocation) => HomeLoadFailure(),
        );

        await tester.pumpApp(
          BlocProvider.value(
            value: homeBloc,
            child: const HomeView(),
          ),
        );

        expect(find.byKey(const Key('homeViewGridView')), findsNothing);
      });
    });
  });
}
