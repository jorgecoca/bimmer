import 'package:bimmer/api/api.dart';
import 'package:bimmer/details/details.dart';
import 'package:flutter/material.dart';
import 'package:bimmer/models/models.dart';
import 'package:transparent_image/transparent_image.dart';

class VehicleList extends StatelessWidget {
  final BimmerApi bimmerApi;

  VehicleList({
    Key key,
    @required this.bimmerApi,
  })  : assert(bimmerApi != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('❤️ Bimmer ️️❤️'),
      ),
      body: FutureBuilder(
        future: bimmerApi.fetchVehicles(),
        builder: (BuildContext context, AsyncSnapshot<List<Vehicle>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final vehicles = snapshot.data;
              return ListView.builder(
                itemCount: vehicles.length,
                itemBuilder: (BuildContext context, int index) {
                  final vehicle = vehicles[index];
                  return ListTile(
                    leading: Hero(
                      tag: vehicle.id,
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: vehicle.imageUrl,
                      ),
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
              );
            }
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
