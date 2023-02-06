import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_series_db/routes/router.gr.dart';
import 'package:the_series_db/shared/shared.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class SeriesItemWidget extends StatelessWidget {
  const SeriesItemWidget({
    super.key,
    required this.tvShow,
  });

  final TvShowModel tvShow;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => context.router.push(
        SeriesHomeRouter(tvShowModel: tvShow),
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: NetworkImage(
                tvShow.imageUrl ?? AppConstants.placeholderSerie,
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    color: AppColors.black.withOpacity(.4),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      tvShow.name,
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
