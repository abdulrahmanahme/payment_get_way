import 'package:flutter/material.dart';
import 'package:payment/presantion/view/check_out_screen.dart';

void main() {
  runApp(const CheckOut());
}

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const CheckOutScreen(),
    );
  }
}
