import 'package:auto_route_demo/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

final List<Player> players = [
  Player(name: 'Jonatan', userId: '1', email: 'JB@gmail.com'),
  Player(name: 'Olof', userId: '2', email: 'Olof@gmail.com'),
  Player(name: 'Jesper', userId: '3', email: 'Jesper@gmail.com'),
];

class PlayersPage extends StatelessWidget {
  const PlayersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        final player = players[index];
        return Card(
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            onTap: () {
              context.pushRoute(PlayerProfileRoute(userId: player.userId));
            },
            title: Text(player.name),
            subtitle: Text(player.email),
          ),
        );
      },
      itemCount: players.length,
    );
  }
}

class Player {
  final String name;
  final String userId;
  final String email;
  Player({
    required this.name,
    required this.userId,
    required this.email,
  });
}
