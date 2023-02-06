// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/series_details/series_details.dart';
import 'package:tsdb_repository/tsdb_repository.dart';
// import 'package:the_series_db/routes/router.gr.dart';

class SeriesDetailsPage extends StatelessWidget {
  const SeriesDetailsPage({
    super.key,
    required this.tvShowModel,
  });

  final TvShowModel tvShowModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SeasonEpisodesCubit>(
      create: (context) => SeasonEpisodesCubit(
        repository: context.read<TsdbRepository>(),
      ),
      child: SeriesDetailsView(tvShowModel: tvShowModel),
    );
  }
}
