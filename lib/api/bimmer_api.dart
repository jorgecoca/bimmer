import 'package:bimmer/models/models.dart';

class BimmerApi {
  Future<List<Vehicle>> fetchVehicles() {
    return Future.delayed(Duration(seconds: 2), () => Future.value([]));
  }
}