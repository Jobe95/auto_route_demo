// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ResultsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ResultPage());
    },
    CreateGameRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    PlayersRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    CreateGameRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.CreateGamePage());
    },
    AddResultRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AddResultRouteArgs>(
          orElse: () =>
              AddResultRouteArgs(gameId: pathParams.getString('gameId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.AddResultPage(key: args.key, gameId: args.gameId));
    },
    PlayersRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PlayersPage());
    },
    PlayerProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PlayerProfileRouteArgs>(
          orElse: () =>
              PlayerProfileRouteArgs(userId: pathParams.getString('userId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.PlayerProfilePage(key: args.key, userId: args.userId));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(ResultsRouter.name,
              path: 'results', parent: HomeRoute.name),
          _i2.RouteConfig(CreateGameRouter.name,
              path: 'createGame',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(CreateGameRoute.name,
                    path: '', parent: CreateGameRouter.name),
                _i2.RouteConfig(AddResultRoute.name,
                    path: ':gameId', parent: CreateGameRouter.name)
              ]),
          _i2.RouteConfig(PlayersRouter.name,
              path: 'players',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(PlayersRoute.name,
                    path: '', parent: PlayersRouter.name),
                _i2.RouteConfig(PlayerProfileRoute.name,
                    path: ':userId', parent: PlayersRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.ResultPage]
class ResultsRouter extends _i2.PageRouteInfo<void> {
  const ResultsRouter() : super(ResultsRouter.name, path: 'results');

  static const String name = 'ResultsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CreateGameRouter extends _i2.PageRouteInfo<void> {
  const CreateGameRouter({List<_i2.PageRouteInfo>? children})
      : super(CreateGameRouter.name,
            path: 'createGame', initialChildren: children);

  static const String name = 'CreateGameRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PlayersRouter extends _i2.PageRouteInfo<void> {
  const PlayersRouter({List<_i2.PageRouteInfo>? children})
      : super(PlayersRouter.name, path: 'players', initialChildren: children);

  static const String name = 'PlayersRouter';
}

/// generated route for
/// [_i1.CreateGamePage]
class CreateGameRoute extends _i2.PageRouteInfo<void> {
  const CreateGameRoute() : super(CreateGameRoute.name, path: '');

  static const String name = 'CreateGameRoute';
}

/// generated route for
/// [_i1.AddResultPage]
class AddResultRoute extends _i2.PageRouteInfo<AddResultRouteArgs> {
  AddResultRoute({_i3.Key? key, required String gameId})
      : super(AddResultRoute.name,
            path: ':gameId',
            args: AddResultRouteArgs(key: key, gameId: gameId),
            rawPathParams: {'gameId': gameId});

  static const String name = 'AddResultRoute';
}

class AddResultRouteArgs {
  const AddResultRouteArgs({this.key, required this.gameId});

  final _i3.Key? key;

  final String gameId;

  @override
  String toString() {
    return 'AddResultRouteArgs{key: $key, gameId: $gameId}';
  }
}

/// generated route for
/// [_i1.PlayersPage]
class PlayersRoute extends _i2.PageRouteInfo<void> {
  const PlayersRoute() : super(PlayersRoute.name, path: '');

  static const String name = 'PlayersRoute';
}

/// generated route for
/// [_i1.PlayerProfilePage]
class PlayerProfileRoute extends _i2.PageRouteInfo<PlayerProfileRouteArgs> {
  PlayerProfileRoute({_i3.Key? key, required String userId})
      : super(PlayerProfileRoute.name,
            path: ':userId',
            args: PlayerProfileRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'PlayerProfileRoute';
}

class PlayerProfileRouteArgs {
  const PlayerProfileRouteArgs({this.key, required this.userId});

  final _i3.Key? key;

  final String userId;

  @override
  String toString() {
    return 'PlayerProfileRouteArgs{key: $key, userId: $userId}';
  }
}
