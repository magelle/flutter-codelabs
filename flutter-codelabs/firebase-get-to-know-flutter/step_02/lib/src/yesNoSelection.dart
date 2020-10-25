import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtk_flutter/src/attending.dart';
import 'package:gtk_flutter/src/widgets.dart';

class YesNoSelection extends StatelessWidget {
  const YesNoSelection({@required this.state, @required this.onSelection});
  final Attending state;
  final void Function(Attending selection) onSelection;

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case Attending.yes:
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                elevation: 0,
                child: Text('YES'),
                onPressed: () => onSelection(Attending.yes),
              ),
              SizedBox(width: 8),
              FlatButton(
                textColor: Colors.deepPurple,
                child: Text('NO'),
                onPressed: () => onSelection(Attending.no),
              ),
            ],
          ),
        );
      case Attending.no:
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              FlatButton(
                textColor: Colors.deepPurple,
                child: Text('YES'),
                onPressed: () => onSelection(Attending.yes),
              ),
              SizedBox(width: 8),
              MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                elevation: 0,
                child: Text('NO'),
                onPressed: () => onSelection(Attending.no),
              ),
            ],
          ),
        );
      default:
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              StyledButton(
                child: Text('YES'),
                onPressed: () => onSelection(Attending.yes),
              ),
              SizedBox(width: 8),
              StyledButton(
                child: Text('NO'),
                onPressed: () => onSelection(Attending.no),
              ),
            ],
          ),
        );
    }
  }
}
