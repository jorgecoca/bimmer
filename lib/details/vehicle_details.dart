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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: vehicle.id,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: vehicle.imageUrl,
              ),
            ),
            Text(
              '${vehicle.yearOfConstruction}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(vehicle.history)
          ],
        ),
      ),
      floatingActionButton: LikeFloatingActionButton(
        likes: vehicle.likes,
      ),
    );
  }
}

class LikeFloatingActionButton extends StatefulWidget {
  final int likes;

  LikeFloatingActionButton({
    Key key,
    @required this.likes,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LikeFloatingActionButton(likes);
}

class _LikeFloatingActionButton extends State<LikeFloatingActionButton> {
  int totalLikes;
  bool didLike = false;

  _LikeFloatingActionButton(this.totalLikes);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(didLike ? Icons.thumb_down : Icons.favorite),
          Text(
            '$totalLikes',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
      onPressed: () {
        setState(() {
          if (didLike) {
            totalLikes--;
            didLike = false;
          } else {
            didLike = true;
            totalLikes++;
          }
        });
      },
    );
  }
}
