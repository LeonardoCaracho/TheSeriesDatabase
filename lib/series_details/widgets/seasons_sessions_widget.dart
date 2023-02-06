import 'package:flutter/material.dart';
import 'package:the_series_db/series_details/series_details.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

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
                  items: _createDropdownItems(seasonsIndexes),
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

  List<DropdownMenuItem<String>> _createDropdownItems(List<String> indexes) {
    return indexes
        .map(
          (i) => DropdownMenuItem(
            value: i,
            child: Text(i),
          ),
        )
        .toList();
  }
}
