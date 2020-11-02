
import 'package:flutter/material.dart';
import 'package:lach/app_bar.dart';
import 'package:lach/gang/fake_data.dart';
import 'package:lach/gang/gang_tile.dart';

class GangList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> gangs = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        .map((e) => GangTile(e, gangName(e), gangImage(e), e))
        .expand((Widget element) => [element, Divider()])
        .toList();

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(children: gangs),
    );
  }
}
