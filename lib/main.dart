import 'package:bimmer/api/api.dart';
import 'package:bimmer/list/list.dart';
import 'package:flutter/material.dart';

void main() => runApp(BimmerApp());

class BimmerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VehicleList(
        bimmerApi: BimmerApi(),
      ),
      theme: ThemeData(
        accentColor: Colors.blue,
        primaryColor: Colors.black,
      ),
    );
  }
}
