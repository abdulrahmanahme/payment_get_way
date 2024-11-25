import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment/core/font_style.dart';
import 'package:payment/core/utils/api_key.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/model/Paypal_models/amount_model/amount_model.dart';
import 'package:payment/model/Paypal_models/amount_model/details.dart';
import 'package:payment/model/Paypal_models/list_items_model/item.dart';
import 'package:payment/model/Paypal_models/list_items_model/list_items_model.dart';
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
              // PaymentModelInput paymentModelInputModel = PaymentModelInput(
              //     amount: '100',
              //     currency: 'USD',
              //     customerId: ApiKey.customerId);
              // BlocProvider.of<PaymentCubit>(context)
              //     .makePayment(paymentModelInputModel);

              /////
              var amountModel = AmountModel(
                  total: '100',
                  details: Details(
                      shipping: '0', shippingDiscount: 0, subtotal: '100'),
                  currency: 'usd');

              var orderList = [
                Order(name: 'Phone', quantity: 1, price: '50', currency: 'use'),
                Order(name: 'Apple', quantity: 1, price: '50', currency: 'use'),
              ];

              var listOrdersModel = ListOrdersModel(orders: orderList);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PaypalCheckoutView(
                  sandboxMode: true,
                  clientId: "YOUR CLIENT ID",
                  secretKey: "YOUR SECRET KEY",
                  transactions: [
                    {
                      "amount": amountModel.toJson(),
                      "description": "The payment transaction description.",
                      "item_list": listOrdersModel.toJson(),
                    }
                  ],
                  note: "Contact us for any questions on your order.",
                  onSuccess: (Map params) async {
                    log("onSuccess: $params");
                    Navigator.pop(context);
                  },
                  onError: (error) {
                    log("onError: $error");
                    Navigator.pop(context);
                  },
                  onCancel: () {
                    print('cancelled:');
                    Navigator.pop(context);
                  },
                ),
              ));
            });
      },
    );
  }
}
