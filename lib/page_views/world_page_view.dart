import 'package:flutter/material.dart';

import '../world_icons.dart';
import '../list_widgets/world_list_widget.dart';
import '../forms/world_form.dart';

class WorldPageView extends StatefulWidget {
  WorldPageView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _WorldPageViewState createState() => _WorldPageViewState();
}

class _WorldPageViewState extends State<WorldPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(WorldIcon.globe_1),
            title: Text("Minecraft Worlds"),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add),
                tooltip: "Add World",
                onPressed: _showAddWorldForm,
              ),
            ]),
        body: WorldsListWidget());
  }

  Future<void> _showAddWorldForm() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return WorldForm();
      },
    );
  }
}
