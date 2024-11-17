

import 'package:flutter/material.dart';
import 'package:payment/core/font_style.dart';

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
