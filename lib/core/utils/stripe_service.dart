import 'package:payment/core/utils/api_key.dart';
import 'package:payment/core/utils/api_service.dart';
import 'package:payment/core/utils/end_points.dart';
import 'package:payment/model/input_models/payment_model_input.dart';
import 'package:payment/model/payment_model/payment_model.dart';

class StripeService {
  ApiService apiService = ApiService();

  Future<PaymentModel> createPaymentIntent(
      PaymentModelInput paymentModelInput) async {
    var response = await apiService.post(
        EndPoints.paymentIntent, paymentModelInput.toJson(), ApiKey.token);
    return PaymentModel.fromJson(response.data);
  }
  
}
