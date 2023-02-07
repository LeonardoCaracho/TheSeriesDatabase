import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/home/home.dart';
import 'package:the_series_db/shared/shared.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(HomeStarted());
    _scroll.addListener(
      () {
        if (_scroll.position.pixels == _scroll.position.maxScrollExtent) {
          context.read<HomeBloc>().add(HomeFetched());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TheSeriesDataBase',
                  style: theme.textTheme.headlineSmall,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Icon(
                    Icons.movie_filter_sharp,
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeLoadSuccess) {
                  return GridView.builder(
                    key: const Key('homeViewGridView'),
                    controller: _scroll,
                    itemCount: state.tvShowsList.length,
                    itemBuilder: (context, index) => SeriesItemWidget(
                      tvShow: state.tvShowsList[index],
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                  );
                }

                if (state is HomeLoadInProgress) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
