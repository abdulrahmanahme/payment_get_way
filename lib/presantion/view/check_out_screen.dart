import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/app_colors.dart';
import 'package:payment/core/assets_path.dart';
import 'package:payment/core/font_style.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(AssetsPath.image + 'arrow.svg'),
        ),
        title: Text('My cart', style: FontStyles.font25W500),
        centerTitle: true,
      ),
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
              onTap: () {},
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

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
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
            'Complete Payment',
            style: FontStyles.font22W500,
          ),
        ),
      ),
    );
  }
}

class ItemOrder extends StatelessWidget {
  const ItemOrder({
    super.key,
    required this.value,
    required this.price,
  });
  final String value, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(value, style: FontStyles.font18W400),
        const Spacer(),
        Text(price, style: FontStyles.font18W400),
      ],
    );
  }
}

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
    required this.value,
    required this.price,
  });
  final String value, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(value, style: FontStyles.font24W600),
        const Spacer(),
        Text(price, style: FontStyles.font24W600),
      ],
    );
  }
}
