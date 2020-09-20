import 'package:flutter/material.dart';

class CoordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add World'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('Name: '),
            Container(
              height: 30,
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  border: null,
                ),
              ),
            ),
            Text('X: '),
            Container(
              height: 30,
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  border: null,
                ),
              ),
            ),
            Text('Z: '),
            Container(
              height: 30,
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  border: null,
                ),
              ),
            ),
            Text('Y: '),
            Container(
              height: 30,
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  border: null,
                ),
              ),
            ),
            Container(
              width: 1,
              height: 4,
              child: Text(""),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
