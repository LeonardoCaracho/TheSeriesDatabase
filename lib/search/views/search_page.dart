import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_series_db/routes/router.gr.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Search'),
          ElevatedButton(
            onPressed: () => context.router.push(
              const SeriesSearchRouter(),
            ),
            child: const Text('go ahead'),
          ),
        ],
      ),
    );
  }
}
