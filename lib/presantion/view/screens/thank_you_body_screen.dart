import 'package:flutter/material.dart';
import 'package:payment/core/app_colors.dart';
import 'package:payment/core/widget.dart';
import 'package:payment/presantion/view/widgets/thank_you_payment_card.dart';

class ThankYouBodyScreen extends StatelessWidget {
  const ThankYouBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: ''),
      body: Transform.translate(
        offset: const Offset(0, -8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const ThankYouPaymentCard(),
                  Positioned(
                    bottom: MediaQuery.sizeOf(context).height * .2,
                    left: -20,
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.sizeOf(context).height * .2,
                    right: -20,
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const Positioned(
                    top: -47,
                    right: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 47,
                      backgroundColor: AppColors.greyColor,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: AppColors.buttonColor,
                        child: Icon(
                          Icons.check,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.sizeOf(context).height * .16 + 47,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: List.generate(
                          30,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color(0xffB8B8B8),
                              ),
                              height: 2,
                              width: 5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
