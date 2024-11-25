import 'package:flutter/material.dart';
import 'package:payment/presantion/view/widgets/custom_bottom_bloc_consumer.dart';
import 'package:payment/presantion/view/widgets/payment_method_card_list_view.dart';

class PaymentModelBottomSheet extends StatelessWidget {
  const PaymentModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10,
          ),
          PaymentMethodCardListView(),
          SizedBox(
            height: 10,
          ),
          CustomBottomBlocConsumer()
        ],
      ),
    );
  }
}
