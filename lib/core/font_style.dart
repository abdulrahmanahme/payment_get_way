import 'package:flutter/material.dart';
import 'package:payment/core/app_colors.dart';

class FontStyles {
  static TextStyle font25W500 = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle font18W400 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle font16W400BlackOpacity70 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black.withOpacity(.7),
  );

  static TextStyle font24W600 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static TextStyle font24W600Green = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.buttonColor,
  );

  static TextStyle font22W500 = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle font18W400Black38 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black38,
  );

  static TextStyle font18W600 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(.8),
  );
}
