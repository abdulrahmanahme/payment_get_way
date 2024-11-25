

class CreateACustomerModel {
  String? id;
  String? object;
  dynamic address;
  int? balance;
  String? name;
  dynamic phone;

  CreateACustomerModel({
    this.id,
    this.object,
    this.address,
    this.balance,
    this.name,
    this.phone,
  });

  factory CreateACustomerModel.fromJson(Map<String, dynamic> json) {
    return CreateACustomerModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      address: json['address'] as dynamic,
      balance: json['balance'] as int?,
      name: json['name'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'object': object,
        'address': address,
        'balance': balance,
        'name': name,
      };
}
