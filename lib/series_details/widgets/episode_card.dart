import 'package:flutter/material.dart';
import 'package:the_series_db/series_details/series_details.dart';
import 'package:the_series_db/shared/shared.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    super.key,
    required this.episode,
  });

  final EpisodeDetailsModel episode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        builder: (BuildContext context) {
          return EpisodeDetails(
            episode: episode,
          );
        },
      ),
      child: Card(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                episode.imageUrl ?? AppConstants.placeholderSerie,
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    color: AppColors.black.withOpacity(.6),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'EP: ${episode.number}',
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
