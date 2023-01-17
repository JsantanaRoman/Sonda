import 'package:flutter/material.dart';

// Base Colors
const primaryColor = Color(0xFFEC6539);
const secondaryColor = Color(0x332D60F2);
const tertiaryColor = Colors.white;
const colorWhite = Color(0xFFFFFFFF);
const colorBlack = Color(0x0FF00000);
const colorGrey = Color(0xFFA7A7A7);

// Button Colors
const buttonColorPrimary = Color(0xFF1C1C1C);

// Slider Colors
const activeSliderColor = Color(0xFFEC6539);
const inactiveSliderColor = Color(0xFF242424);
const thumbSliderColor = Color(0xFF17327B);

// Icon Colors
const inactiveIconColor = Color(0xFF9EA0A3);
const activeIconColor = Color(0xFFFFFFFF);

// Other
const itemContainerBackground = Color(0xFF181818);
const globalBackgroundColor = Colors.black;
const playlistBoxColor = Color(0xFFD9D9D9);

// Text Styles
const modalHeadingTextStyleOne = TextStyle(
  color: colorWhite,
  fontSize: 40,
  fontWeight: FontWeight.w300,
  letterSpacing: -2,
);

TextStyle modalheadingTextStyleTwo =
    modalHeadingTextStyleOne.copyWith(fontSize: 24);

TextStyle modalheadingTextStyleThree =
    modalHeadingTextStyleOne.copyWith(fontSize: 20);

const primaryButtonTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

const subscriptionValueTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 32,
  fontWeight: FontWeight.w300,
);

TextStyle inActiveSubscriptionValueTextStyle =
    subscriptionValueTextStyle.copyWith(color: colorWhite);

const subscriptionLengthTextStyle = TextStyle(
  color: colorWhite,
  fontSize: 16,
  fontWeight: FontWeight.w300,
);

const subscriptionBoxDetailsTextStyle = TextStyle(
  color: colorGrey,
  fontSize: 12,
  fontWeight: FontWeight.w300,
);
