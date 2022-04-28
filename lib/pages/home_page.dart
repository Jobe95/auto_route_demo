import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/router/router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Colors.amber,
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.amber,
        title: const Text('AutoRouter Demo'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      routes: const [ResultsRouter(), CreateGameRouter(), PlayersRouter()],
      bottomNavigationBuilder: (_, tabsRouter) => NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.list), label: "Results"),
          NavigationDestination(icon: Icon(Icons.add), label: "Create"),
          NavigationDestination(
              icon: Icon(Icons.format_list_numbered), label: "Players"),
        ],
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: tabsRouter.setActiveIndex,
      ),
    );
  }
}
