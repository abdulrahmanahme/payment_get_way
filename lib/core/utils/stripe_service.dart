import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_key.dart';
import 'package:payment/core/utils/api_service.dart';
import 'package:payment/core/utils/end_points.dart';
import 'package:payment/model/create_a_customer_model/create_a_customer_model.dart';
import 'package:payment/model/create_a_customer_model/create_a_customer_model_input/create_a_customer_input.dart';
import 'package:payment/model/payment/input_models/payment_model_input.dart';
import 'package:payment/model/payment/payment_model/payment_model.dart';

class StripeService {
  ApiService apiService = ApiService();

  Future<PaymentModel> createPaymentIntent(
      PaymentModelInput paymentModelInput) async {
    var response = await apiService.post(
        EndPoints.paymentIntent, paymentModelInput.toJson(), ApiKey.token);
    return PaymentModel.fromJson(response.data);
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Abdelrahman',
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future createPayment({required PaymentModelInput paymentModelInput}) async {
    var paymentModelInputModel = await createPaymentIntent(paymentModelInput);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentModelInputModel.clientSecret!);

    await displayPaymentSheet();
  }

  Future<CreateACustomerModel> createACustomer(
      CreateACustomerInput createCustomerInput) async {
    var response = await apiService.post(
        EndPoints.createCustomer, createCustomerInput.toJson(), ApiKey.token);
    return CreateACustomerModel.fromJson(response.data);
  }
}
