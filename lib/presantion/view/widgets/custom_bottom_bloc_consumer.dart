import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/font_style.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/model/payment/input_models/payment_model_input.dart';
import 'package:payment/presantion/manager/cubit/payment_states.dart';
import 'package:payment/presantion/manager/cubit/paymnent_cubit.dart';
import 'package:payment/presantion/view/screens/thank_you_body_screen.dart';

class CustomBottomBlocConsumer extends StatelessWidget {
  const CustomBottomBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentStates>(
      listener: (context, state) {
        if (state is SuccessPaymentState) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const ThankYouBodyScreen(),
            ),
          );
        } else if (state is ErrorPaymentState) {
          Navigator.of(context).pop();
          log('${state.errorMessage}');
          SnackBar snackBar = SnackBar(
              content: Text(
            state.errorMessage,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomBottom(
            isLoading: state is LoadingPaymentState ? true : false,
            title: 'Pay',
            onTap: () {
              PaymentModelInput paymentModelInputModel =
                  PaymentModelInput(amount: '100', currency: 'USD');
              BlocProvider.of<PaymentCubit>(context)
                  .makePayment(paymentModelInputModel);
            });
      },
    );
  }
}
