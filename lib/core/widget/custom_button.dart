import 'package:flutter/widgets.dart';
import 'package:payment/core/app_colors.dart';
import 'package:payment/core/font_style.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.onTap,
    this.title,
  });
  final void Function()? onTap;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: AppColors.buttonColor,
        ),
        child: Center(
          child: Text(
            title ?? 'Complete Payment',
            style: FontStyles.font22W500,
          ),
        ),
      ),
    );
  }
}
