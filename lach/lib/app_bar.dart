import 'package:flutter/material.dart';
import 'package:lach/gang/gang_form.dart';

AppBar buildAppBar(context) {
  return new AppBar(
    title: new Text('My gangs'),
    actions: <Widget>[
      new IconButton(
        icon: const Icon(Icons.add),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => GangForm(0))),
      )
    ],
  );
}
