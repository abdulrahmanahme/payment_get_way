import 'package:payment/core/utils/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:payment/model/payment/input_models/payment_model_input.dart';

abstract class PaymentCheckoutRepo {
  Future<Either<Failure, void>> excitePayment(
      PaymentModelInput paymentModelInputModel);
}
