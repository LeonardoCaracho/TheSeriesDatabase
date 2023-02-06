import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/search/search.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(
        tsdbRepository: context.read<TsdbRepository>(),
      ),
      child: const SearchView(),
    );
  }
}
