import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/search/search.dart';
import 'package:the_series_db/shared/shared.dart';

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
              style: const TextStyle(color: AppColors.white),
              decoration: InputDecoration(
                fillColor: AppColors.primary,
                suffixIcon: const Icon(Icons.search),
                hintText: 'Search',
                hintStyle: const TextStyle(color: AppColors.primaryDark),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                border: OutlineInputBorder(
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

                  if (state is SearchLoadInProgress) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primary,
                      ),
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
