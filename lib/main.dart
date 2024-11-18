import 'package:flutter/material.dart';
import 'package:payment/presantion/view/screens/check_out_screen.dart';

void main() {
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
