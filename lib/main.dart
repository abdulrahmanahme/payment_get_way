import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_key.dart';
import 'package:payment/presantion/view/screens/check_out_screen.dart';

void main() {
  Stripe.publishableKey = ApiKey.publishableKey;
  runApp(const CheckOut());
}

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Inter', useMaterial3: true),
      home: const CheckOutScreen(),
    );
  }
}
