import 'package:flutter/material.dart';

class RideStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ride Started'),
      ),
      body: Center(
        child: Text('Ride has started!'),
      ),
    );
  }
}
