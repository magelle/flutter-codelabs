import 'package:flutter/material.dart';
import 'package:lach/gang/gang_list.dart';

class GangForm extends StatelessWidget {
  final int gangId;

  GangForm(this.gangId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Gang'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () =>
                Navigator.pop(context),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.group),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Gang Name",
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.photo),
            title: Text('Soon coming ...'),
          ),
          ListTile(
            leading: const Icon(Icons.article),
            title: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Gang description",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
