import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/pages/pages.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(
    path: '/',
    page: HomePage,
    children: [
      AutoRoute(
        path: 'results',
        name: 'ResultsRouter',
        page: ResultPage,
      ),
      AutoRoute(
        path: 'createGame',
        name: 'CreateGameRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: CreateGamePage,
          ),
          AutoRoute(
            path: ':gameId',
            page: AddResultPage,
          ),
        ],
      ),
      AutoRoute(
        path: 'players',
        name: 'PlayersRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: PlayersPage,
          ),
          AutoRoute(
            path: ':userId',
            page: PlayerProfilePage,
          ),
        ],
      ),
    ],
  ),
])
class $AppRouter {}
