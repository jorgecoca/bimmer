import 'package:bimmer/details/details.dart';
import 'package:flutter/material.dart';
import 'package:bimmer/models/models.dart';
import 'package:transparent_image/transparent_image.dart';

class VehicleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vehicles = _vehicles();
    return Scaffold(
      appBar: AppBar(
        title: Text('Bimmer'),
      ),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (BuildContext context, int index) {
          final vehicle = vehicles[index];
          return ListTile(
            leading: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: vehicle.imageUrl,
            ),
            title: Text(vehicle.name),
            subtitle: Text('${vehicle.yearOfConstruction}'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => VehicleDetails(vehicle: vehicle),
              ));
            },
          );
        },
      ),
    );
  }
}

List<Vehicle> _vehicles() {
  return [
    Vehicle(
        id: '1234',
        name: '330i xDrive',
        yearOfConstruction: 2019,
        likes: 200,
        imageUrl:
            'https://thebmwstore.ca/sites/default/files/styles/scale_width_660/public/assets/vehicle/color_picker/2018/bmw/3-series/cc_2018BMC220002_01_1280_475.png?itok=-7GpRnrk',
        history: 'Lorem ipsum something'),
    Vehicle(
        id: '6789',
        name: 'i8',
        yearOfConstruction: 2018,
        likes: 290,
        imageUrl:
            'https://www.freepngimg.com/thumb/bmw/58040-i8-car-i3-bmw-2017-free-clipart-hq.png',
        history: 'Lorem ipsum something'),
  ];
}
