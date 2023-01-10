class Indent {
  Indent._();
  static const double _baseIndent = 8.0;
  static const i1 = _baseIndent;
  static const i2 = _baseIndent * 2;
  static const i3 = _baseIndent * 3;
  static const i4 = _baseIndent * 4;
  static const i5 = _baseIndent * 5;
  static const i6 = _baseIndent * 6;
  static const i7 = _baseIndent * 7;
  static const i8 = _baseIndent * 8;
  static const i9 = _baseIndent * 9;

  static double getIndent(double convert) => _baseIndent * convert;
}
