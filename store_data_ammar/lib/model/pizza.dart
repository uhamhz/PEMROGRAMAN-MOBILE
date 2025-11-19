const keyId = 'id';
const keyName = 'pizzaName';
const keyDescription = 'description';
const keyPrice = 'price';
const keyImage = 'imageUrl';

class Pizza {
  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;

  Pizza.fromJson(Map<String, dynamic> json)
    : id = int.tryParse(json[keyId].toString()) ?? 0,
      pizzaName = json[keyName].toString(),
      description = json[keyDescription].toString(),
      price = double.tryParse(json[keyPrice].toString()) ?? 0,
      imageUrl = json[keyImage] ?? '';
  Map<String, dynamic> toJson() => {
    keyId: id,
    keyName: pizzaName,
    keyDescription: description,
    keyPrice: price,
    keyImage: imageUrl,
  };
}
