import 'package:flutter/material.dart';
import 'package:lach/gang/fake_data.dart';
import 'package:lach/gang/gang_form.dart';

class GangView extends StatelessWidget {
  final int gangId;

  GangView(this.gangId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(gangName(gangId)),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => GangForm(gangId))),
          ),
        ],
      ),
      body: ListView(children: [
        Image(image: NetworkImage(gangImage(gangId))),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              gangDescription(gangId),
              style: TextStyle(
                fontSize: 18,
              ),
            ))
      ]),
    );
  }
}
