import 'package:flutter/material.dart';

import '../list_widgets/coords_list_widget.dart';
import '../forms/coords_form.dart';

class CoordsPageView extends StatefulWidget {
  CoordsPageView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CoordsPageViewState createState() => _CoordsPageViewState();
}

class _CoordsPageViewState extends State<CoordsPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coordinates"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: "Add Coords",
            onPressed: showCoordForm,
          ),
        ],
      ),
      body: CoordsListWidget(),
    );
  }

  Future<void> showCoordForm() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return CoordForm();
      },
    );
  }
}
