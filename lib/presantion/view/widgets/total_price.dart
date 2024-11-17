
import 'package:flutter/widgets.dart';

import '../../../core/font_style.dart';

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
