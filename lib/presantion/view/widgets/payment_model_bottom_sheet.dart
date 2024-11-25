import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_const/app_const.dart';
import 'package:payment/presantion/view/widgets/custom_bottom_bloc_consumer.dart';
import 'package:payment/presantion/view/widgets/payment_method_card.dart';

class PaymentModelBottomSheet extends StatefulWidget {
  const PaymentModelBottomSheet({super.key});

  @override
  State<PaymentModelBottomSheet> createState() =>
      _PaymentModelBottomSheetState();
}

class _PaymentModelBottomSheetState extends State<PaymentModelBottomSheet> {
  int currentItemSelected = 0;
  @override
  Widget build(BuildContext context) {
    log('dd ${currentItemSelected}');
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              PaymentMethodCard(
                isActive: currentItemSelected == 0,
                image: AppConst.paymentCardImage[0],
                onTap: () {
                  setState(() {
                    currentItemSelected = 0;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              PaymentMethodCard(
                isActive: currentItemSelected == 1,
                image: AppConst.paymentCardImage[1],
                onTap: () {
                  setState(() {
                    currentItemSelected = 1;
                  });
                },
              ),
            ],
            
          ),
          // PaymentMethodCardListView(),
          const SizedBox(
            height: 10,
          ),
          CustomBottomBlocConsumer(
            currentItemSelected: currentItemSelected,
          )
        ],
      ),
    );
  }
}
