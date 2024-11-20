import 'package:flutter/material.dart';
import 'package:ridebuddy/model/user.dart';
import 'package:ridebuddy/screen/DRIVER_FLOW/rideRequest/ride_request_screen.dart';

class BottomSheetContent extends StatelessWidget {
  final User user;

  const BottomSheetContent({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'User: ${user.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          Text('Destination: ${user.destination}'),
          Text('Fare: \$${user.fare}'),
          Text('Distance: ${user.distance} meters away'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Trigger call functionality here
                },
                icon: const Icon(Icons.call),
                label: const Text('Call'),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Accept ride logic here
                      Navigator.pop(context); // Close bottom sheet
                    },
                    child: const Text('Accept'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Reject ride logic here
                      Navigator.pop(context); // Close bottom sheet
                    },
                    child: const Text('Reject'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
