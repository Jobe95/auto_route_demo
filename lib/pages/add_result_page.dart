import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class AddResultPage extends StatelessWidget {
  final String gameId;
  const AddResultPage({
    Key? key,
    @PathParam() required this.gameId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(child: Text('ADD RESULT FOR GAME WITH ID: $gameId')),
    );
  }
}
