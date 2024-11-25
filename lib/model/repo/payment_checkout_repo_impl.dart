import 'package:dartz/dartz.dart';
import 'package:payment/core/utils/error/failure.dart';
import 'package:payment/core/utils/stripe_service.dart';
import 'package:payment/model/payment/input_models/payment_model_input.dart';
import 'payment_checkout_repo.dart';

class PaymentCheckoutRepoImpl implements PaymentCheckoutRepo {
  StripeService stripeService = StripeService();

  @override
  Future<Either<Failure, void>> excitePayment(
      PaymentModelInput paymentModelInputModel) async {
    try {
      await stripeService.createPayment(
        paymentModelInput: paymentModelInputModel,
      );
      return right(null);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}

/// 116610436
