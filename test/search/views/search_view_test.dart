import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/home/home.dart';
import 'package:the_series_db/search/search.dart';

import '../../helpers/helpers.dart';

class _MockSearchBloc extends MockBloc<SearchEvent, SearchState> implements SearchBloc {}

class FakeHomeEvent extends Fake implements HomeEvent {}

class FakeHomeState extends Fake implements HomeState {}

void main() {
  late SearchBloc searchBloc;

  group('Search', () {
    setUp(() {
      searchBloc = _MockSearchBloc();
      when(() => searchBloc.state).thenAnswer((invocation) => SearchInitial());
    });

    group('renders', () {
      testWidgets('should renders correct text view', (tester) async {
        await tester.pumpApp(
          BlocProvider.value(
            value: searchBloc,
            child: const SearchView(),
          ),
        );

        expect(find.text('Search'), findsOneWidget);
      });

      testWidgets('should renders circular progress indicador when SearchLoadInProgress', (
        tester,
      ) async {
        await mockNetworkImages(() async {
          when(() => searchBloc.state).thenAnswer(
            (invocation) => SearchLoadInProgress(),
          );

          await tester.pumpApp(
            BlocProvider.value(
              value: searchBloc,
              child: const SearchView(),
            ),
          );

          expect(find.byType(CircularProgressIndicator), findsOneWidget);
        });
      });

      testWidgets('should renders ListView when SearchLoadSuccess', (
        tester,
      ) async {
        await mockNetworkImages(() async {
          when(() => searchBloc.state).thenAnswer(
            (invocation) => SearchLoadSuccess(
              tvShowsList: [tvShowModelMock],
            ),
          );

          await tester.pumpApp(
            BlocProvider.value(
              value: searchBloc,
              child: const SearchView(),
            ),
          );

          expect(find.byType(ListView), findsOneWidget);
        });
      });

      testWidgets('should not render ListView when is not HomeLoadSuccess', (
        tester,
      ) async {
        when(() => searchBloc.state).thenAnswer(
          (invocation) => SearchLoadFailure(),
        );

        await tester.pumpApp(
          BlocProvider.value(
            value: searchBloc,
            child: const SearchView(),
          ),
        );

        expect(find.byType(ListView), findsNothing);
      });
    });

    group('add', () {
      testWidgets('should add SearchFetched when search is submitted', (tester) async {
        await tester.pumpApp(
          BlocProvider.value(
            value: searchBloc,
            child: const SearchView(),
          ),
        );

        await tester.enterText(find.byType(TextField), 'star');
        await tester.testTextInput.receiveAction(TextInputAction.done);
        await tester.pump();

        verify(() => searchBloc.add(SearchFetched(query: 'star'))).called(1);
      });
    });
  });
}
