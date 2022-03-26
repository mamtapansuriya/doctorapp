import 'dart:developer';

import 'package:flutter/material.dart';

class SizeUtils {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? horizontalBlockSize;
  static double? verticalBlockSize;
  static double? appBarHeight;

  sizerInit(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    horizontalBlockSize = screenWidth / 100;
    verticalBlockSize = screenHeight / 100;
    appBarHeight = AppBar().preferredSize.height;
  }

  static fSize_385() {
    return horizontalBlockSize! * 106.953; //385
  }

  static fSize_300() {
    return horizontalBlockSize! * 86; //300
  }

  static fSize_275() {
    return horizontalBlockSize! * 75; //250
  }

  static fSize_250() {
    return horizontalBlockSize! * 69.45; //250
  }

  static fSize_200() {
    return horizontalBlockSize! * 57; //200
  }

  static fSize_140() {
    return horizontalBlockSize! * 38; //150
  }

  static fSize_150() {
    return horizontalBlockSize! * 43; //150
  }

  static fSize_120() {
    return horizontalBlockSize! * 33.344; //120
  }

  static fSize_110() {
    return horizontalBlockSize! * 30.562; //110
  }

  static fSize_100() {
    return horizontalBlockSize! * 27.78; //100
  }

  static fSize_90() {
    return horizontalBlockSize! * 25.008; //90
  }

  static fSize_82() {
    return horizontalBlockSize! * 22.4; //82
  }

  static fSize_80() {
    return horizontalBlockSize! * 20.514; //80
  }

  static fSize_75() {
    return horizontalBlockSize! * 20.85; //75
  }

  static fSize_70() {
    return horizontalBlockSize! * 19; //70
  }

  static fSize_60() {
    return horizontalBlockSize! * 16.672; //60
  }

  static fSize_55() {
    return horizontalBlockSize! * 15.281; //55
  }

  static fSize_50() {
    return horizontalBlockSize! * 13.89; //50
  }

  static fSize_48() {
    return horizontalBlockSize! * 13.38; //48
  }

  static fSize_45() {
    return horizontalBlockSize! * 12.51; //45
  }

  static fSize_40() {
    return horizontalBlockSize! * 10.257; //40
  }

  static fSize_38() {
    return horizontalBlockSize! * 11; //38
  }

  static fSize_34() {
    return horizontalBlockSize! * 9.5; //34
  }

  static fSize_30() {
    return horizontalBlockSize! * 8.336; //30
  }

  static fSize_28() {
    return horizontalBlockSize! * 7; //28
  }

  static fSize_25() {
    return horizontalBlockSize! * 6.945; //25
  }

  static fSize_24() {
    return horizontalBlockSize! * 6.690; //24
  }

  static fSize_20() {
    return horizontalBlockSize! * 5.560; //20
  }

  static fSize_18() {
    return horizontalBlockSize! * 5.0; //18
  }

  static fSize_17() {
    return horizontalBlockSize! * 4.75; //18
  }

  static fSize_16() {
    return horizontalBlockSize! * 4.450; //16
  }

  static fSize_15() {
    return horizontalBlockSize! * 4.170; //15
  }

  static fSize_14() {
    return horizontalBlockSize! * 3.900; //14
  }

  static fSize_11() {
    return horizontalBlockSize! * 3.06; //11
  }

  static fSize_12() {
    return horizontalBlockSize! * 3.360; //12
  }

  static fSize_13() {
    return horizontalBlockSize! * 3.637; //13
  }

  static fSize_10() {
    return horizontalBlockSize! * 2.800; //10
  }

  static fSize_8() {
    return horizontalBlockSize! * 2.245; //8
  }

  static fSize_6() {
    return horizontalBlockSize! * 1.685; //6
  }

  static fSize_4() {
    return horizontalBlockSize! * 1.120; //4
  }

  static fSize_3() {
    return horizontalBlockSize! * 0.8425; //6
  }

  static fSize_2() {
    return horizontalBlockSize! * 0.560; //4
  }
}
