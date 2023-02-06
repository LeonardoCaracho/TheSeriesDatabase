import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/l10n/l10n.dart';
import 'package:the_series_db/routes/router.gr.dart';
import 'package:the_series_db/shared/shared.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

final appRouter = AppRouter();

class App extends StatelessWidget {
  const App({
    super.key,
    required this.tsdbRepository,
  });

  final TsdbRepository tsdbRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<TsdbRepository>(
      create: (context) => tsdbRepository,
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        theme: const AppTheme().themeData,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
