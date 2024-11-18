
import 'package:flutter/material.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/presantion/view/widgets/payment_method_card_list_view.dart';

class PaymentModelBottomSheet extends StatelessWidget {
  const PaymentModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 10,
        ),
        const PaymentMethodCardListView(),
        const SizedBox(
          height: 10,
        ),
        CustomBottom(title: 'Pay', onTap: () {}),
      ],
    );
  }
}
