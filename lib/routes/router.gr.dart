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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../app/app.dart' as _i1;
import '../episode_details/episode_details.dart' as _i5;
import '../home/home.dart' as _i3;
import '../search/search.dart' as _i6;
import '../series_details/series_details.dart' as _i4;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    SeriesHomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SeriesDetailsPage(),
      );
    },
    EpisodeHomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EpisodeDetailsPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SearchPage(),
      );
    },
    SeriesSearchRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SeriesDetailsPage(),
      );
    },
    EpisodeSearchRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EpisodeDetailsPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainScreen.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainScreen.name,
              children: [
                _i7.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i7.RouteConfig(
                  SeriesHomeRouter.name,
                  path: 'series-details',
                  parent: HomeRouter.name,
                ),
                _i7.RouteConfig(
                  EpisodeHomeRouter.name,
                  path: 'episode-details',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: MainScreen.name,
              children: [
                _i7.RouteConfig(
                  SearchRoute.name,
                  path: '',
                  parent: SearchRouter.name,
                ),
                _i7.RouteConfig(
                  SeriesSearchRouter.name,
                  path: 'series-details',
                  parent: SearchRouter.name,
                ),
                _i7.RouteConfig(
                  EpisodeSearchRouter.name,
                  path: 'episode-details',
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
class MainScreen extends _i7.PageRouteInfo<void> {
  const MainScreen({List<_i7.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchRouter extends _i7.PageRouteInfo<void> {
  const SearchRouter({List<_i7.PageRouteInfo>? children})
      : super(
          SearchRouter.name,
          path: 'search',
          initialChildren: children,
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.SeriesDetailsPage]
class SeriesHomeRouter extends _i7.PageRouteInfo<void> {
  const SeriesHomeRouter()
      : super(
          SeriesHomeRouter.name,
          path: 'series-details',
        );

  static const String name = 'SeriesHomeRouter';
}

/// generated route for
/// [_i5.EpisodeDetailsPage]
class EpisodeHomeRouter extends _i7.PageRouteInfo<void> {
  const EpisodeHomeRouter()
      : super(
          EpisodeHomeRouter.name,
          path: 'episode-details',
        );

  static const String name = 'EpisodeHomeRouter';
}

/// generated route for
/// [_i6.SearchPage]
class SearchRoute extends _i7.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i4.SeriesDetailsPage]
class SeriesSearchRouter extends _i7.PageRouteInfo<void> {
  const SeriesSearchRouter()
      : super(
          SeriesSearchRouter.name,
          path: 'series-details',
        );

  static const String name = 'SeriesSearchRouter';
}

/// generated route for
/// [_i5.EpisodeDetailsPage]
class EpisodeSearchRouter extends _i7.PageRouteInfo<void> {
  const EpisodeSearchRouter()
      : super(
          EpisodeSearchRouter.name,
          path: 'episode-details',
        );

  static const String name = 'EpisodeSearchRouter';
}
