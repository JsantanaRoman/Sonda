import 'package:flutter/material.dart';
import 'package:sonda/core/constants/styles.dart';

ThemeData sondaTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: globalBackgroundColor,
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: colorWhite,
          displayColor: colorWhite,
          fontFamily: 'AtHaussStd',
        ),
  );
}
