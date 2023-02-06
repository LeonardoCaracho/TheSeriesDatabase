import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/home/home.dart';
import 'package:the_series_db/routes/router.gr.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

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
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home'),
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeLoadSuccess) {
                  return GridView.builder(
                    controller: _scroll,
                    itemCount: state.tvShowsList.length,
                    itemBuilder: (context, index) => SeriesItemWidget(
                      tvShow: state.tvShowsList[index],
                    ),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
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

class SeriesItemWidget extends StatelessWidget {
  const SeriesItemWidget({
    super.key,
    required this.tvShow,
  });

  final TvShowModel tvShow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(
        SeriesHomeRouter(tvShowModel: tvShow),
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(tvShow.imageUrl),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(tvShow.name),
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
