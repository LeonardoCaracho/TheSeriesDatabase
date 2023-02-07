import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_series_db/l10n/l10n.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class MockTsdbRepository extends Mock implements TsdbRepository {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    TsdbRepository? tsdbRepository,
  }) {
    return pumpWidget(
      RepositoryProvider(
        create: (context) => tsdbRepository ?? MockTsdbRepository(),
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: widget,
        ),
      ),
    );
  }
}
