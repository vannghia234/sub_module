extension DoubleExtension on double {
  double toPrecision(int fractionDigits) {
    return double.parse(toStringAsFixed(fractionDigits));
  }

  String toDistanceString() {
    if (this >= 1) {
      return '${toPrecision(2)} km';
    } else {
      return '${(this * 1000).toPrecision(2)} m';
    }
  }
}
