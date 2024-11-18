import 'package:flutter/material.dart';
import 'package:payment/core/app_colors.dart';
import 'package:payment/core/assets_path.dart';
import 'package:payment/core/widget.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/presantion/view/widgets/item_order.dart';
import 'package:payment/presantion/view/widgets/payment_model_bottom_sheet.dart';
import 'package:payment/presantion/view/widgets/total_price.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'My Cart'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Image.asset(
                (AssetsPath.image + "product.png"),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const ItemOrder(
              value: 'Order Subtotal',
              price: r'24.9$',
            ),
            const SizedBox(
              height: 3,
            ),
            const ItemOrder(
              value: 'Discount',
              price: r'9$',
            ),
            const SizedBox(
              height: 3,
            ),
            const ItemOrder(
              value: 'Shipping',
              price: r'8$',
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
              height: 10,
            ),
            CustomBottom(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => const PaymentModelBottomSheet());
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const PaymentDetailsScreen(),),);
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

