import 'package:flutter/material.dart';

class StartRideScreen extends StatelessWidget {
  const StartRideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Ride'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Current Location',
                prefixIcon: Icon(Icons.location_on),
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              onTap: () {
                // Use a location picker here if needed
              },
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Destination Location',
                prefixIcon: Icon(Icons.map),
                border: OutlineInputBorder(),
              ),
              onTap: () {
                // Use a Google Places API picker
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show route or start ride
              },
              child: const Text('Show Route'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
