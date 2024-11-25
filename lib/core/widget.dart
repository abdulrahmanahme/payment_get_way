import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/assets_path.dart';
import 'package:payment/core/font_style.dart';

AppBar appBarWidget({required String title, required context}) {
  return AppBar(
    leading: Center(
      child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(AssetsPath.image + 'arrow.svg')),
    ),
    title: Text(title, style: FontStyles.font25W500),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
