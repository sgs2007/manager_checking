import 'package:flutter/material.dart';

const appleGradientsAccents = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 114, 187, 246),
    Color.fromARGB(255, 245, 123, 163),
    Color.fromARGB(255, 255, 194, 115),
  ],
);

const expandedGradient = LinearGradient(
  colors: [
    Color(0xFF322D50),
    Color(0xFF322D50),
    Color(0xFF47416C),
    Color(0xFF47416C),
  ],
  stops: [
    0.0,
    0.5,
    0.5,
    1.0,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const collapsedGradient = LinearGradient(colors: [
  Color(0xFF47416C),
  Color(0xFF47416C),
]);
