import 'package:bimmer/list/list.dart';
import 'package:flutter/material.dart';

void main() => runApp(BimmerApp());

class BimmerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VehicleList(),
    );
  }
}

