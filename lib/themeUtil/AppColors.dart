

import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors{
  static const MaterialColor appPrimaryColor = Colors.green;

  LinearGradient getPurpleGradient(){
    return const LinearGradient(
      colors: [Color(0xffc4a8fd), Color(0xffc4a8fd)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
  }

  LinearGradient getOrangeGradient(){
    return const LinearGradient(
      colors: [Color(0xffffece4), Color(0xffffece4)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
  }

  LinearGradient getYellowGradient(){
    return const LinearGradient(
      colors: [Color(0xfffef4de), Color(0xfffef4de)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
  }

}

