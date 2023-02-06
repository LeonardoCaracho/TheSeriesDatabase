import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.network(episode.imageUrl!, fit: BoxFit.contain),
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

final seasonMock = [
  SeasonModel(
    season: 4,
    episodes: [
      EpisodeDetailsModel(
        id: 34,
        name: 'Face Off',
        number: 13,
        season: 4,
        summary: 'summary mock',
        imageUrl: 'https://static.tvmaze.com/uploads/images/medium_landscape/405/1012681.jpg',
      ),
    ],
  ),
  SeasonModel(
    season: 5,
    episodes: [
      EpisodeDetailsModel(
        id: 56,
        name: 'Granite State',
        number: 15,
        season: 5,
        summary: 'summary mock',
        imageUrl: 'https://static.tvmaze.com/uploads/images/medium_landscape/405/1012681.jpg',
      ),
      EpisodeDetailsModel(
        id: 57,
        name: 'Felina',
        number: 16,
        season: 5,
        summary: 'summary mock',
        imageUrl: 'https://static.tvmaze.com/uploads/images/medium_landscape/405/1012681.jpg',
      ),
    ],
  ),
];
