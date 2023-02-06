import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_series_db/home/home.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(
        repository: context.read<TsdbRepository>(),
      ),
      child: const HomeView(),
    );
  }
}
