import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_series_db/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home'),
          ElevatedButton(
            onPressed: () => context.router.push(
              const SeriesHomeRouter(),
            ),
            child: const Text('go ahead'),
          ),
        ],
      ),
    );
  }
}
