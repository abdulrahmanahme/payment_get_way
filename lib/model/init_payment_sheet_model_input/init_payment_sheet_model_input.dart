class InitPaymentSheetModelInput {
  final String clientSecret;
  final String ephemeralKeySecret;
  final String customerId;

  InitPaymentSheetModelInput(
      {required this.clientSecret,
      required this.ephemeralKeySecret,
      required this.customerId});

}
