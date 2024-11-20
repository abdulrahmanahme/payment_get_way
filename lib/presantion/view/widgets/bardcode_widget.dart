import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/app_colors.dart';
import 'package:payment/core/assets_path.dart';
import 'package:payment/core/font_style.dart';

class BarcodeWidget extends StatelessWidget {
  const BarcodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AssetsPath.image + 'barcode.svg'),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // color: AppColors.buttonColor,
              border: Border.all(width: 1, color: AppColors.buttonColor)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'PAID',
              style: FontStyles.font24W600Green,
            ),
          ),
        )
      ],
    );
  }
}
