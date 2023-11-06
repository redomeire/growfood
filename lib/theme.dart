import 'package:flutter/material.dart';

//Colors

Color green1 = const Color(0xff099250);
Color green2 = const Color(0xff16B364);
Color greenDisabled = const Color(0xffD3F8DF);

Color yellow = const Color(0xffD0A430);
Color purple = const Color(0xff870079);
Color orange = const Color(0xffF68A45);

//Typography
TextStyle regular12_5 = const TextStyle(fontFamily: 'Manrope', fontSize: 12.5);
TextStyle regular14 = regular12_5.copyWith(fontSize: 14);

TextStyle semibold12_5 = regular12_5.copyWith(fontWeight: FontWeight.w600);
TextStyle semibold14 = semibold12_5.copyWith(fontSize: 14, letterSpacing: 0.1);

TextStyle bold16 = regular12_5.copyWith(
    fontWeight: FontWeight.w800, fontSize: 16, letterSpacing: 0.1);
TextStyle bold18 = bold16.copyWith(fontSize: 18, letterSpacing: -0.5);
