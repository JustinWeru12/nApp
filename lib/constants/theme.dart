import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF240E63);
const kSecondaryColor = Color(0xFF20125f);
const kTertiaryColor = Color(0xFF17154f);
const kTextColor = Color(0xFFffffff);
const kBackgroundColor = Color(0xFF5ce3f6);
const actionColor = Color(0xFFf85d3f);

const double kDefaultPadding = 20.0;
const kGradient = const LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: const [
    kPrimaryColor,
    kSecondaryColor,
    kTertiaryColor
  ],
);