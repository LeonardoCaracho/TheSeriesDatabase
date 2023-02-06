import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/series_details/series_details.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class SeriesDetailsView extends StatelessWidget {
  const SeriesDetailsView({
    super.key,
    required this.tvShowModel,
  });

  final TvShowModel tvShowModel;

  @override
  Widget build(BuildContext context) {
    context.read<SeasonEpisodesCubit>().fetchTvShowSeasons(tvShowModel.id);

    return Center(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            expandedHeight: 240,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(tvShowModel.name),
              centerTitle: true,
              background: Image.network(
                tvShowModel.imageUrl ?? 'https://via.placeholder.com/350x200',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Content(
                tvShowModel: tvShowModel,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
