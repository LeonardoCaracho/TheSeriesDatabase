// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i7;
import 'package:tsdb_repository/tsdb_repository.dart' as _i9;

import '../app/app.dart' as _i1;
import '../home/home.dart' as _i3;
import '../search/search.dart' as _i5;
import '../series_details/series_details.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    SeriesHomeRouter.name: (routeData) {
      final args = routeData.argsAs<SeriesHomeRouterArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SeriesDetailsPage(
          key: args.key,
          tvShowModel: args.tvShowModel,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SearchPage(),
      );
    },
    SeriesSearchRouter.name: (routeData) {
      final args = routeData.argsAs<SeriesSearchRouterArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SeriesDetailsPage(
          key: args.key,
          tvShowModel: args.tvShowModel,
        ),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          MainScreen.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainScreen.name,
              children: [
                _i6.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i6.RouteConfig(
                  SeriesHomeRouter.name,
                  path: 'series-details',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i6.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: MainScreen.name,
              children: [
                _i6.RouteConfig(
                  SearchRoute.name,
                  path: '',
                  parent: SearchRouter.name,
                ),
                _i6.RouteConfig(
                  SeriesSearchRouter.name,
                  path: 'series-details',
                  parent: SearchRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i6.PageRouteInfo<void> {
  const MainScreen({List<_i6.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchRouter extends _i6.PageRouteInfo<void> {
  const SearchRouter({List<_i6.PageRouteInfo>? children})
      : super(
          SearchRouter.name,
          path: 'search',
          initialChildren: children,
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.SeriesDetailsPage]
class SeriesHomeRouter extends _i6.PageRouteInfo<SeriesHomeRouterArgs> {
  SeriesHomeRouter({
    _i8.Key? key,
    required _i9.TvShowModel tvShowModel,
  }) : super(
          SeriesHomeRouter.name,
          path: 'series-details',
          args: SeriesHomeRouterArgs(
            key: key,
            tvShowModel: tvShowModel,
          ),
        );

  static const String name = 'SeriesHomeRouter';
}

class SeriesHomeRouterArgs {
  const SeriesHomeRouterArgs({
    this.key,
    required this.tvShowModel,
  });

  final _i8.Key? key;

  final _i9.TvShowModel tvShowModel;

  @override
  String toString() {
    return 'SeriesHomeRouterArgs{key: $key, tvShowModel: $tvShowModel}';
  }
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i4.SeriesDetailsPage]
class SeriesSearchRouter extends _i6.PageRouteInfo<SeriesSearchRouterArgs> {
  SeriesSearchRouter({
    _i8.Key? key,
    required _i9.TvShowModel tvShowModel,
  }) : super(
          SeriesSearchRouter.name,
          path: 'series-details',
          args: SeriesSearchRouterArgs(
            key: key,
            tvShowModel: tvShowModel,
          ),
        );

  static const String name = 'SeriesSearchRouter';
}

class SeriesSearchRouterArgs {
  const SeriesSearchRouterArgs({
    this.key,
    required this.tvShowModel,
  });

  final _i8.Key? key;

  final _i9.TvShowModel tvShowModel;

  @override
  String toString() {
    return 'SeriesSearchRouterArgs{key: $key, tvShowModel: $tvShowModel}';
  }
}
