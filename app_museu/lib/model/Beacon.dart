import 'package:flutter/foundation.dart';

class Beacon {
  final String name;
  final String description;

  Beacon({
    @required this.name,
    @required this.description,
  });

  factory Beacon.fromJson(Map<String, dynamic> json) {
    return Beacon(
      name: json['name'] as String,
      description: json['description'] as String,
    );
  }
}
