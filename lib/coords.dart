class Coords {
  final double xCoords, yCoords, zCoords;
  final String name;
  Coords(this.name, this.xCoords, this.yCoords, this.zCoords);

  String getOverworldCoords() {
    return ("x." +
        xCoords.toString() +
        ", y." +
        yCoords.toString() +
        ", z." +
        zCoords.toString());
  }

  String getNetherCoords() {
    return ("x." +
        (xCoords * 8).toString() +
        ", y." +
        (yCoords * 8).toString() +
        ", z." +
        (zCoords * 8).toString());
  }

  String getName() {
    return name;
  }
}
