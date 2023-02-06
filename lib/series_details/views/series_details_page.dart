// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:tsdb_repository/tsdb_repository.dart';
// import 'package:the_series_db/routes/router.gr.dart';

class SeriesDetailsPage extends StatelessWidget {
  const SeriesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            expandedHeight: 240,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Breaking bad'),
              centerTitle: true,
              background: Image.network(
                'https://static.tvmaze.com/uploads/images/original_untouched/0/2400.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Profile(),
            ]),
          ),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${['Wednesday, Friday'].join(' ')} - 10:00 PM',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: HtmlWidget(
              '''<p><b>Breaking Bad</b> follows protagonist Walter White, a chemistry teacher who lives in New Mexico with his wife and teenage son who has cerebral palsy. White is diagnosed with Stage III cancer and given a prognosis of two years left to live. With a new sense of fearlessness based on his medical prognosis, and a desire to secure his family\'s financial security, White chooses to enter a dangerous world of drugs and crime and ascends to power in this world. The series explores how a fatal diagnosis such as White\'s releases a typical man from the daily concerns and constraints of normal society and follows his transformation from mild family man to a kingpin of the drug trade.</p>''',
            ),
          ),
          Wrap(
            spacing: 5,
            children: [
              Chip(
                label: Text(
                  'Action',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              Chip(
                label: Text(
                  'Crime',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          ),
          SeasonsSessionsWidget(seasons: seasonMock),
        ],
      ),
    );
  }
}

class SeasonsSessionsWidget extends StatefulWidget {
  const SeasonsSessionsWidget({
    super.key,
    required this.seasons,
  });

  final List<SeasonModel> seasons;

  @override
  State<SeasonsSessionsWidget> createState() => _SeasonsSessionsWidgetState();
}

class _SeasonsSessionsWidgetState extends State<SeasonsSessionsWidget> {
  late String selectedValue;
  late List<String> seasonsIndexes;
  late List<EpisodeDetailsModel> selectedSeasonEpisodes;

  @override
  void initState() {
    selectedSeasonEpisodes = widget.seasons.first.episodes;
    seasonsIndexes = widget.seasons
        .map(
          (e) => e.season.toString(),
        )
        .toList();
    selectedValue = seasonsIndexes.first;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Episodes',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Row(
              children: [
                Text(
                  'Season:   ',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                DropdownButton(
                  value: selectedValue,
                  items: createDropdownItems(seasonsIndexes),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                      selectedSeasonEpisodes = widget.seasons
                          .firstWhere(
                            (s) => s.season == int.parse(newValue),
                          )
                          .episodes;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: selectedSeasonEpisodes.length,
            itemBuilder: (BuildContext context, int index) => EpisodeCard(
              episode: selectedSeasonEpisodes[index],
            ),
          ),
        ),
      ],
    );
  }
}

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    super.key,
    required this.episode,
  });

  final EpisodeDetailsModel episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        barrierColor: const Color.fromRGBO(0, 0, 0, 0.8),
        backgroundColor: Colors.yellow,
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
              image: NetworkImage(episode.imageUrl!),
            ),
          ),
          child: Positioned(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text('EP: ${episode.number}'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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

List<DropdownMenuItem<String>> createDropdownItems(List<String> indexes) {
  return indexes
      .map(
        (i) => DropdownMenuItem(
          value: i,
          child: Text(i),
        ),
      )
      .toList();
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
