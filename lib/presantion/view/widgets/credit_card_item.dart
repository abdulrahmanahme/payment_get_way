import 'package:flutter/widgets.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardItem extends StatefulWidget {
  const CreditCardItem();

  @override
  State<CreditCardItem> createState() => _CreditCardItemState();
}

class _CreditCardItemState extends State<CreditCardItem> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool isCvvFocused = false;

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CreditCardWidget(
        //   cardNumber: cardNumber,
        //   expiryDate: expiryDate,
        //   cardHolderName: cardHolderName,
        //   cvvCode: cvvCode,
        //   showBackView: isCvvFocused,
        //   onCreditCardWidgetChange: (CreditCardBrand brand) {},
        // ),
        // CreditCardForm(
        //     cardNumber: cardNumber,
        //     expiryDate: expiryDate,
        //     cardHolderName: cardHolderName,
        //     cvvCode: cvvCode,
        //     onCreditCardModelChange: (creditCardModel) {
        //       cardNumber = creditCardModel.cardNumber;
        //       expiryDate = creditCardModel.expiryDate;
        //       cardHolderName = creditCardModel.cardHolderName;
        //       cvvCode = creditCardModel.cvvCode;
        //       setState(() {

        //       });
        //     },
        //     formKey: formKey)
      ],
    );
  }
}
