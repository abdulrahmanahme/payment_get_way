import 'item.dart';

class ListOrdersModel {
  List<Order>? orders;

  ListOrdersModel({this.orders});

  factory ListOrdersModel.fromJson(Map<String, dynamic> json) {
    return ListOrdersModel(
      orders: (json['items'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'items': orders?.map((e) => e.toJson()).toList(),
      };
}
