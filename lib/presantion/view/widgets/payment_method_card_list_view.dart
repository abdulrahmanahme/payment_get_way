


import 'package:flutter/widgets.dart';
import 'package:payment/presantion/view/widgets/payment_method_card.dart';

class PaymentMethodCardListView extends StatefulWidget {
  const PaymentMethodCardListView({super.key});

  @override
  State<PaymentMethodCardListView> createState() =>
      _PaymentMethodCardListViewState();
}

class _PaymentMethodCardListViewState extends State<PaymentMethodCardListView> {
  List<String> paymentCardImage = [
    'assets/images/visa.svg',
    'assets/images/paypal.svg'
  ];
  int currentItemSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => PaymentMethodCard(
          isActive: currentItemSelected == index,
          image: paymentCardImage[index],
          onTap: () {
            setState(() {
              currentItemSelected = index;
            });
          },
        ),
        itemCount: paymentCardImage.length,
      ),
    );
  }
}