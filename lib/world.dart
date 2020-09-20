import './coords.dart';

class World {
  final String _name;
  final String _seed;
  List<Coords> _coordsList;

  World(this._name, this._seed);

  String getName() {
    return _name;
  }

  String getSeed() {
    return _seed;
  }

  List<Coords> getCoordsList() {
    return _coordsList;
  }

  void addCoord(String name, double xCoord, double yCoord, double zCoord) {
    _coordsList.add(Coords(name, xCoord, yCoord, zCoord));
  }
}
