import 'package:flutter/material.dart';
import 'package:ridebuddy/screen/DRIVER_FLOW/rideRequest/ride_request_screen.dart';

class StartRideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Ride'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your destination to start the ride.',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter destination',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Trigger the ride alert logic here
                _triggerAlerts(context);  // Trigger alerts

                // Navigate to the user request screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserRideRequestScreen(),
                  ),
                );
              },
              child: const Text('Start Ride'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to trigger the alerts (you can integrate with your backend here)
  void _triggerAlerts(BuildContext context) {
    // For now, let's just show a simple snackbar for testing
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Ride alerts sent to nearby users!')),
    );
  }
}
