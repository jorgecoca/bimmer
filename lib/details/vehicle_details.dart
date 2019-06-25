import 'package:flutter/material.dart';
import 'package:bimmer/models/models.dart';
import 'package:transparent_image/transparent_image.dart';

class VehicleDetails extends StatelessWidget {
  final Vehicle vehicle;

  VehicleDetails({
    Key key,
    @required this.vehicle,
  })  : assert(vehicle != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vehicle.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: vehicle.imageUrl,
            ),
            Text('${vehicle.yearOfConstruction}'),
            Text(vehicle.history)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: null,
      ),
    );
  }
}
