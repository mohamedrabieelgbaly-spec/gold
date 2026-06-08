import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class Model {
  final String name;
  final num price;

  final String symbol;

  final String updatedAt;
  final String updatedAtReadable;

  Model({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory Model.formJson(Map<String, dynamic> json) {
    return Model(
      name: json['name'],
      price: json['price'],
      symbol: json['symbol'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
