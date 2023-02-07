import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:the_series_db/shared/shared.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class EpisodeDetails extends StatelessWidget {
  const EpisodeDetails({
    super.key,
    required this.episode,
  });

  final EpisodeDetailsModel episode;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.76,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  episode.imageUrl ?? AppConstants.placeholderSerie,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.close,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'S${episode.season}E${episode.number} - ${episode.name}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: HtmlWidget(episode.summary ?? ''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
