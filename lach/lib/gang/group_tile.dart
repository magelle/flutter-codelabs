import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lach/gang/gang_list_image.dart';

class GroupTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int newMessages;

  GroupTile(this.name, this.imageUrl, this.newMessages);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GroupListImage(imageUrl),
      title: Text(name),
      trailing: Icon(Icons.more_vert),
      subtitle: Text('$newMessages new messages'),
      onTap: () => {},
    );
  }
}
