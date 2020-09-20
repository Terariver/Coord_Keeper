import 'package:flutter/material.dart';

import '../coords.dart';

class CoordsListWidget extends StatelessWidget {
  final List<Coords> coordsList = <Coords>[
    Coords("home", 152.41, 1561.65, 652),
    Coords("mine", 152.41, 1561.65, 652),
    Coords("portal", 152.41, 1561.65, 652)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: coordsList.length,
      itemBuilder: (BuildContext conext, int index) {
        return Container(
            height: 80,
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(coordsList[index].getName()),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Overworld: " + coordsList[index].getOverworldCoords(),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nether: " + coordsList[index].getNetherCoords(),
                  ),
                )
              ],
            ));
      },
    );
  }
}
