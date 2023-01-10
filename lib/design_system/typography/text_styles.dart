import 'package:flutter/material.dart';

import '../colors/colors.dart';

const baseStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w400,
  fontSize: 16,
);

const defaultTextStyle = TextStyle(
  fontSize: 16,
  color: defaultTextColor,
);

const smallDefaultTextStyle = TextStyle(
  fontSize: 14,
  color: defaultTextColor,
);

class TypographyProject {
  TypographyProject._();

  static const defaultTextStyle = TextStyle(
    fontSize: 16,
    color: defaultTextColor,
  );

  static const defaultSmallTextStyle = TextStyle(
    fontSize: 14,
    color: defaultTextColor,
  );

  static const defaultLargeTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color(0xFFF8D3C7),
  );
}
