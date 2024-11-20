import 'package:flutter/material.dart';
import 'package:ridebuddy/screen/DRIVER_FLOW/rideStarted/rider_started_screen.dart';

class OTPConfirmationScreen extends StatefulWidget {
  final String riderName;
  final String destination;
  final double fair;
  final double distance;

  OTPConfirmationScreen({
    required this.riderName,
    required this.destination,
    required this.fair,
    required this.distance,
  });

  @override
  _OTPConfirmationScreenState createState() => _OTPConfirmationScreenState();
}

class _OTPConfirmationScreenState extends State<OTPConfirmationScreen> {
  final TextEditingController otpController = TextEditingController();
  bool isValidOTP = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Confirmation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Rider Details
            Text('Rider: ${widget.riderName}', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Destination: ${widget.destination}'),
            Text('Fair: \$${widget.fair.toStringAsFixed(2)}'),
            Text('Distance: ${widget.distance.toStringAsFixed(2)} km'),
            SizedBox(height: 20),

            // Map placeholder (optional)
            Container(
              height: 200,
              color: Colors.grey[200], // You can replace this with a map
              child: Center(child: Text('Map showing rider\'s location')),
            ),
            SizedBox(height: 20),

            // OTP Field
            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter OTP',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Verify Button
            ElevatedButton(
              onPressed: () {
                // Verify OTP here (can be done via API)
                if (otpController.text == '1234') { // Mock OTP check
                  setState(() {
                    isValidOTP = true;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RideStartedScreen(),
                    ),
                  );
                } else {
                  // Show error if OTP is incorrect
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid OTP')));
                }
              },
              child: Text('Verify OTP'),
            ),
            if (!isValidOTP) SizedBox(height: 20),
            if (!isValidOTP)
              Text('Please enter the OTP provided by the rider to confirm the ride.', style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
