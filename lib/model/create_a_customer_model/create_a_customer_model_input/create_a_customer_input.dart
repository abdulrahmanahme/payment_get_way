class CreateACustomerInput {
  final String id;

  final String name;
  CreateACustomerInput({required this.name, required this.id});

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}
