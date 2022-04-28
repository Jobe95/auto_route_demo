import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class PlayerProfilePage extends StatelessWidget {
  final String userId;
  const PlayerProfilePage({
    Key? key,
    @PathParam() required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('PLAYER PROFILE PAGE')),
    );
  }
}
