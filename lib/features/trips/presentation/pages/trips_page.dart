import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trip_planner/core/routes/app_router.gr.dart';

@RoutePage()
class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TripsPage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          child: Text('Go to LoginSignupPage'),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushRoute(const NewTripRoute());
        },
        child: Icon(Icons.add),
      )
    );
  }
}