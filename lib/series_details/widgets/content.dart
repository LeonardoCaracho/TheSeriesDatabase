import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:the_series_db/series_details/series_details.dart';
import 'package:the_series_db/shared/shared.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.tvShowModel,
  });

  final TvShowModel tvShowModel;

  String exhibitionInfo() {
    if (tvShowModel.exhibitionDays!.isNotEmpty) {
      // ignore: lines_longer_than_80_chars
      return '${tvShowModel.exhibitionDays!.join(', ')} - ${tvShowModel.exhibitionHour}';
    }

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            exhibitionInfo(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: HtmlWidget(tvShowModel.summary ?? ''),
          ),
          Wrap(
            spacing: 5,
            children: tvShowModel.genres
                .map(
                  (genre) => Chip(
                    backgroundColor: AppColors.primary,
                    label: Text(
                      genre,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                )
                .toList(),
          ),
          BlocBuilder<SeasonEpisodesCubit, SeasonEpisodesState>(
            builder: (context, state) {
              if (state is SeasonEpisodesLoadSuccess) {
                return SeasonsSessionsWidget(seasons: state.seasons);
              }

              if (state is SeasonEpisodesLoadInProgress) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                );
              }

              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
