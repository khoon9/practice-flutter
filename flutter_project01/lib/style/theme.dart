import 'package:flutter/material.dart';

final customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
  ),
  textTheme: TextTheme(
      bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 30)
  ),
  useMaterial3: true,
);