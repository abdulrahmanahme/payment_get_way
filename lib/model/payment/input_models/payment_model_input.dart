class PaymentModelInput {
  final String amount;
  final String currency;
  PaymentModelInput({required this.amount, required this.currency});

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }
}