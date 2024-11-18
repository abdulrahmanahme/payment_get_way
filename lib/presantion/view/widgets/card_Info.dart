import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/font_style.dart';

import '../../../core/assets_path.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
        child: Row(
          children: [
            SvgPicture.asset(AssetsPath.image + 'logo.svg'),
            const SizedBox(
              width: 22,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Credit Card', style: FontStyles.font18W400),
                Text('Mastercard **78 ',
                    style: FontStyles.font16W400BlackOpacity70),
              ],
            )
          ],
        ),
      ),
    );
  }
}
