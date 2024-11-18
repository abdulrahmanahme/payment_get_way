import 'package:flutter/material.dart';
import 'package:payment/core/app_colors.dart';
import 'package:payment/core/font_style.dart';
import 'package:payment/presantion/view/widgets/bardcode_widget.dart';
import 'package:payment/presantion/view/widgets/card_Info.dart';
import 'package:payment/presantion/view/widgets/item_order.dart';
import 'package:payment/presantion/view/widgets/total_price.dart';
class ThankYouPaymentCard extends StatelessWidget {
  const ThankYouPaymentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .82,
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: AppColors.greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 47 + 16, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Thank you!', style: FontStyles.font25W500),
            const SizedBox(
              height: 2,
            ),
            Center(
              child: Text(' Your transaction was successful',
                  textAlign: TextAlign.center,
                  style: FontStyles.font18W400Black38),
            ),
            const SizedBox(
              height: 20,
            ),
            ItemOrder(
              value: 'Data',
              price: '01/24/2023',
              priceStyle: FontStyles.font18W600,
            ),
            const SizedBox(
              height: 3,
            ),
            ItemOrder(
              value: 'Time',
              price: '10:15 AM',
              priceStyle: FontStyles.font18W600,
            ),
            const SizedBox(
              height: 3,
            ),
            ItemOrder(
              value: 'To',
              price: 'Sam Louis',
              priceStyle: FontStyles.font18W600,
            ),
            const Divider(
              height: 25,
              thickness: 2,
              color: AppColors.dividerColor,
            ),
            const TotalPrice(
              value: 'Total',
              price: r'505$',
            ),
            const SizedBox(
              height: 30,
            ),
            const CardInfo(),
            const Spacer(),
            const BarcodeWidget(),
            SizedBox(
              height:( MediaQuery.sizeOf(context).height *  .06),
            )
          ],
        ),
      ),
    );
  }
}

