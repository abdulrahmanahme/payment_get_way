import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/model/payment/input_models/payment_model_input.dart';
import 'package:payment/model/repo/payment_checkout_repo.dart';
import 'package:payment/presantion/manager/cubit/payment_states.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit({required this.paymentCheckoutRepo})
      : super(InitialPaymentState());

  PaymentCheckoutRepo paymentCheckoutRepo;
  Future<void> makePayment(PaymentModelInput paymentModelInputModel) async {
    emit(InitialPaymentState());
    var response =
        await paymentCheckoutRepo.excitePayment(paymentModelInputModel);
    response.fold((l) {
      emit(ErrorPaymentState(l.message));
    }, (r) {
      emit(SuccessPaymentState());
    });
  }

  @override
  void onChange(Change<PaymentStates> change) {
    super.onChange(change);

    log('${change.currentState}');
  }
}
