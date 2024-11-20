import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard(
      {super.key, required this.image, this.isActive = false, this.onTap});

  final String image;
  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 1000),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 62,
            width: 103,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: isActive
                  ? null
                  : Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
              boxShadow: isActive
                  ? const [
                      BoxShadow(
                        color: Color(0xFF34A853),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 0),
                      ),
                    ]
                  : null,
            ),
            child: Center(
              child: SvgPicture.asset(
                image,
                height: 24,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
