import 'package:flutter/material.dart';
import 'package:lach/gang/gang_list_image.dart';
import 'package:lach/gang/gang_view.dart';

class GangTile extends StatelessWidget {
  final int gangId;
  final String imageUrl;
  final String name;
  final int newMessages;

  GangTile(this.gangId, this.name, this.imageUrl, this.newMessages);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GangListImage(imageUrl),
      title: Text(name),
      trailing: Text('12:55', style: TextStyle(color: Colors.grey),),
      subtitle: Text('$newMessages new messages'),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GangView(gangId))
        )
      },
    );
  }
}
