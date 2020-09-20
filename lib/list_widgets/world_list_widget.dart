import 'package:flutter/material.dart';

import '../world.dart';
import '../page_views/coords_page_view.dart';

class WorldsListWidget extends StatelessWidget {
  final List<World> mcWorldList = <World>[
    World("World1", "21981"),
    World("World2", "45491"),
    World("World2", "458491")
  ];

  final List<String> worlds = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mcWorldList.length,
      itemBuilder: (BuildContext conext, int index) {
        return Container(
          height: 60,
          padding: EdgeInsets.all(8.0),
          child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoordsPageView()),
                );
              },
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        mcWorldList[index].getName(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        mcWorldList[index].getSeed(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                        ),
                      )),
                ],
              )),
        );
      },
    );
  }
}
