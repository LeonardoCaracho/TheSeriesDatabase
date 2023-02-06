import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/search/search.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onSubmitted: (text) {
                context.read<SearchBloc>().add(
                      SearchFetched(
                        query: text,
                      ),
                    );
              },
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                hintText: 'Search',
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3.1, color: Colors.red),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state is SearchLoadSuccess) {
                    return ListView.builder(
                      itemCount: state.tvShowsList.length,
                      itemBuilder: (context, index) => SearchResultTile(
                        show: state.tvShowsList[index],
                      ),
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            )
            // ElevatedButton(
            //   onPressed: () => context.router.push(
            //     const SeriesSearchRouter(),
            //   ),
            //   child: const Text('go ahead'),
            // ),
          ],
        ),
      ),
    );
  }
}

class SearchResultTile extends StatelessWidget {
  const SearchResultTile({
    super.key,
    required this.show,
  });

  final TvShowModel show;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.network(show.imageUrl ?? 'https://via.placeholder.com/350x200'),
            title: Text(show.name),
            subtitle: const Text('This is a simple card in Flutter.'),
          ),
        ],
      ),
    );
  }
}
