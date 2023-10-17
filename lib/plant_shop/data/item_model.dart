import 'dart:convert';

ItemModel itemModelFromJson(String str) => ItemModel.fromJson(json.decode(str));

String itemModelToJson(ItemModel data) => json.encode(data.toJson());

class ItemModel {
  String? img;
  String? name;
  Params? params;
  String? price;

  ItemModel({
    this.img,
    this.name,
    this.params,
    this.price,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
    img: json["img"],
    name: json["name"],
    params: json["params"] == null ? null : Params.fromJson(json["params"]),
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "img": img,
    "name": name,
    "params": params?.toJson(),
    "price": price,
  };
}

class Params {
  String? height;
  String? temperature;
  String? pot;

  Params({
    this.height,
    this.temperature,
    this.pot,
  });

  factory Params.fromJson(Map<String, dynamic> json) => Params(
    height: json["height"],
    temperature: json["temperature"],
    pot: json["pot"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "temperature": temperature,
    "pot": pot,
  };
}
