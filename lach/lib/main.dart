import 'package:flutter/material.dart';
import 'package:lach/app_bar.dart';
import 'package:lach/gang/fake_data.dart';
import 'package:lach/gang/gang_form.dart';
import 'package:lach/gang/group_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lach',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GangList(),
        routes: {
          'displayGang': (context) => GangForm(),
          'gangConversation': (context) => GangForm(),
          'gangForm': (context) => GangForm(),
        });
  }
}

class GangList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> gangs = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        .map((e) => GroupTile(gangName(e), gangImage(e), e))
        .expand((Widget element) => [element, Divider()])
        .toList();

    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(children: gangs),
    );
  }
}
