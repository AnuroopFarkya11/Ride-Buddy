import 'package:flutter/material.dart';
import 'package:ridebuddy/model/user.dart';
import 'package:ridebuddy/screen/DRIVER_FLOW/rideRequest/widget/bottom_Sheet.dart';

class UserRideRequestScreen extends StatelessWidget {
  final List<User> users = [
    User(name: 'John Doe', destination: 'Downtown', fare: 10, distance: 150),
    User(name: 'Jane Smith', destination: 'Uptown', fare: 15, distance: 80),
    // Add more users as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Interested in Ride'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text('Destination: ${user.destination}'),
            trailing: Text('\$${user.fare}'),
            onTap: () => _showBottomSheet(context, user),
          );
        },
      ),
    );
  }

  void _showBottomSheet(BuildContext context, User user) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return BottomSheetContent(user: user);
      },
    );
  }
}


