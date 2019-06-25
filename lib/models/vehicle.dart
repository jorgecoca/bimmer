import 'package:meta/meta.dart';

class Vehicle {
  final String id;
  final String name;
  final int yearOfConstruction;
  final String imageUrl;
  final int likes;
  final String history;

  Vehicle({
    @required this.id,
    @required this.name,
    @required this.yearOfConstruction,
    @required this.imageUrl,
    @required this.likes,
    @required this.history,
  });
}
