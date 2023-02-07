import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:the_series_db/app/app.dart';
import 'package:the_series_db/home/home.dart';
import 'package:the_series_db/search/search.dart';
import 'package:the_series_db/series_details/series_details.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: MainScreen,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
            AutoRoute(
              name: 'SeriesHomeRouter',
              path: 'series-details',
              page: SeriesDetailsPage,
            ),
          ],
        ),
        AutoRoute(
          path: 'search',
          name: 'SearchRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: SearchPage,
            ),
            AutoRoute(
              name: 'SeriesSearchRouter',
              path: 'series-details',
              page: SeriesDetailsPage,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
