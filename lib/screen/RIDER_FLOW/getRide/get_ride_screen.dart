import 'package:flutter/material.dart';

class GetRideScreen extends StatelessWidget {
  const GetRideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Ride'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Dummy data count
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text('Driver $index'),
                      subtitle: const Text('ETA: 10 mins | Fare: ₹50'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Book the ride
                        },
                        child: const Text('Book'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
