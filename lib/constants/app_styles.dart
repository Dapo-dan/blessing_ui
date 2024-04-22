import 'package:blairsin/constants/app_colors.dart';
import 'package:flutter/material.dart';

const TextStyle heading1 = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.w600,
  color: tertiary9,
);

const TextStyle heading2Style = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w600,
);

const TextStyle heading3Style = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

const TextStyle headlineStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w700,
);

const TextStyle body1 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: secondary6,
);

const TextStyle body2 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w300,
  color: secondary6,
);

const TextStyle button = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const TextStyle caption = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: primary4,
);

// Box Shadow
List<BoxShadow> kAppShadow = [
  BoxShadow(
    spreadRadius: 0,
    blurRadius: 1,
    color: Colors.black.withOpacity(.25),
    offset: const Offset(0, 4),
  ),
];

// Paddings
const EdgeInsets authPadding = EdgeInsets.symmetric(
  horizontal: 35,
  vertical: 60,
);

const ShapeBorder v2AppbarBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(32),
  ),
);
