import 'package:flutter/material.dart';
import 'package:the_series_db/app/app.dart';
import 'package:the_series_db/bootstrap.dart';
import 'package:tsdb_repository/tsdb_repository.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

void main() {
  bootstrap(() {
    WidgetsFlutterBinding.ensureInitialized();

    final tvMazeApiClient = TvMazeApiClient();
    final tsdbRepository = TsdbRepositoryImpl(
      apiClient: tvMazeApiClient,
    );

    return App(tsdbRepository: tsdbRepository);
  });
}
