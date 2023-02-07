import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockingjay/mockingjay.dart';
import 'package:the_series_db/l10n/l10n.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class MockTsdbRepository extends Mock implements TsdbRepository {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widgetUnderTest, {
    TsdbRepository? tsdbRepository,
    MockNavigator? navigator,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: tsdbRepository ?? MockTsdbRepository(),
        child: MaterialApp(
          title: 'TSDB',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: navigator == null
              ? Scaffold(body: widgetUnderTest)
              : MockNavigatorProvider(
                  navigator: navigator,
                  child: Scaffold(body: widgetUnderTest),
                ),
        ),
      ),
    );
  }
}
