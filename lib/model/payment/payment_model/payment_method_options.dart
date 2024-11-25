import 'card.dart';
import 'cashapp.dart';
import 'link.dart';

class PaymentMethodOptions {
  Card? card;
  // Cashapp? cashapp;
  Link? link;

  PaymentMethodOptions({this.card, this.link});

  factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) {
    return PaymentMethodOptions(
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      // cashapp: json['cashapp'] == null
      //     ? null
      //     : Cashapp.fromJson(json['cashapp'] as Map<String, dynamic>),
      link: json['link'] == null
          ? null
          : Link.fromJson(json['link'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'card': card?.toJson(),
        // 'cashapp': cashapp?.toJson(),
        'link': link?.toJson(),
      };

  PaymentMethodOptions copyWith({
    Card? card,
    // Cashapp? cashapp,
    Link? link,
  }) {
    return PaymentMethodOptions(
      card: card ?? this.card,
      // cashapp: cashapp ?? this.cashapp,
      link: link ?? this.link,
    );
  }
}
