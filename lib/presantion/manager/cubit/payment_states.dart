abstract class PaymentStates {}

class InitialPaymentState extends PaymentStates {}

class LoadingPaymentState extends PaymentStates {}

class SuccessPaymentState extends PaymentStates {}

class ErrorPaymentState extends PaymentStates {
  ErrorPaymentState(this.errorMessage);
  final String errorMessage;
}
