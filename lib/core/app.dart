import 'package:flutter/material.dart';
import 'package:ridebuddy/screen/HOME/home_screen.dart';

class RideBuddyApp extends StatelessWidget {
  const RideBuddyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'RideBuddy',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}


