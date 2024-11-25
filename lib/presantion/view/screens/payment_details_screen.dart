import 'package:flutter/material.dart';
import 'package:payment/core/widget.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/presantion/view/screens/thank_you_body_screen.dart';
import 'package:payment/presantion/view/widgets/credit_card_item.dart';
import 'package:payment/presantion/view/widgets/payment_method_card_list_view.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Payment Details', context: context),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            PaymentMethodCardListView(),
            CreditCardItem(),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomBottom(
              isLoading: false,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThankYouBodyScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
