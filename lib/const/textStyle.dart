import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle regular = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const TextStyle italic = TextStyle(
    fontStyle: FontStyle.italic,
    fontSize: 14,
  );

  static const TextStyle heading = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static const TextStyle subtitle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Colors.grey,
  );

  static const TextStyle small = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static const TextStyle error = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Colors.red,
  );
}
