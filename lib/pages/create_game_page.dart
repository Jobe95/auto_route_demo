import 'package:auto_route_demo/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class CreateGamePage extends StatelessWidget {
  const CreateGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.pushRoute(AddResultRoute(gameId: "1"));
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text('Skapa match'),
        ),
      ),
    );
  }
}
