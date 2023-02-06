import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_series_db/routes/router.gr.dart';
import 'package:the_series_db/shared/shared.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class SearchResultTile extends StatelessWidget {
  const SearchResultTile({
    super.key,
    required this.show,
  });

  final TvShowModel show;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: () => context.router.push(
              SeriesSearchRouter(tvShowModel: show),
            ),
            child: ListTile(
              leading: Image.network(
                show.imageUrl ?? AppConstants.placeholderEpisode,
              ),
              title: Text(show.name),
              subtitle: Text(show.genres.join(' · ')),
            ),
          ),
        ],
      ),
    );
  }
}
