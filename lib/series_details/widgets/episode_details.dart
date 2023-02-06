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
                child: HtmlWidget(
                  '''<p><b>Breaking Bad</b> follows protagonist Walter White, a chemistry teacher who lives in New Mexico with his wife and teenage son who has cerebral palsy. White is diagnosed with Stage III cancer and given a prognosis of two years left to live. With a new sense of fearlessness based on his medical prognosis, and a desire to secure his family\'s financial security, White chooses to enter a dangerous world of drugs and crime and ascends to power in this world. The series explores how a fatal diagnosis such as White\'s releases a typical man from the daily concerns and constraints of normal society and follows his transformation from mild family man to a kingpin of the drug trade.</p>''',
                ),
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
