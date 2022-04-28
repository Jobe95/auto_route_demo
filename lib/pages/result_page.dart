import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

List<Results> results = [
  Results(
      gameId: '1',
      text: 'Kronan vs General',
      winner: 'Kronan',
      bestOf: 5,
      result: [
        Result(homeTeam: 11, awayTeam: 4),
        Result(homeTeam: 11, awayTeam: 8),
        Result(homeTeam: 9, awayTeam: 11),
        Result(homeTeam: 11, awayTeam: 2),
      ]),
  Results(
      gameId: '2',
      text: 'Kronan vs Grov',
      winner: 'Kronan',
      bestOf: 3,
      result: [
        Result(homeTeam: 11, awayTeam: 4),
        Result(homeTeam: 11, awayTeam: 8),
        Result(homeTeam: 11, awayTeam: 2),
      ]),
  Results(
      gameId: '3',
      text: 'General vs Grov',
      winner: 'General',
      bestOf: 1,
      result: [
        Result(homeTeam: 11, awayTeam: 8),
      ]),
];

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...results
              .map(
                (result) => Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    onTap: () {},
                    title: Text(result.text),
                    leading: Text('BO: ${result.bestOf}'),
                    trailing: Text('Winner: ${result.winner}'),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class Results {
  final String gameId;
  final String winner;
  final String text;
  final int bestOf;
  final List<Result> result;
  Results({
    required this.gameId,
    this.bestOf = 1,
    required this.text,
    required this.result,
    required this.winner,
  });
}

class Result {
  final int homeTeam;
  final int awayTeam;
  Result({
    required this.homeTeam,
    required this.awayTeam,
  });
}
